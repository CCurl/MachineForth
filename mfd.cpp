// ------------------------------------------------------------
// This is inpsired by these:
// http://www.ultratechnology.com/mfp21.htm
// http://www.ultratechnology.com/aha.htm
// ------------------------------------------------------------
// To build      : gcc -g -Ofast -o mf mf.c
// To see the asm: gcc -g -Ofast -S -fverbose-asm mf.c
// ------------------------------------------------------------

#include <windows.h> 
#include <stdio.h>

typedef unsigned long CELL;
typedef unsigned char BYTE;

// ------------------------------------------------------------
// Things that would change from usage to usage
#define MEM_SZ_K 1
#define MF_SRC "mf.src"
#define MF_BIN "mf.bin"
#define MF_INF "mf.txt"
#define MF_DIS "mf.dis"
#define MF_WDS "mf.wds"
#define DSZ 64		// data stack size (circular)
#define RSZ 64		// return stack size (circular)
#define MAX_WORDS 2048
// ------------------------------------------------------------

HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

FILE* input_fp = NULL;
FILE* output_fp = NULL;

CELL MEM_SZ = (1024 * MEM_SZ_K);
CELL HERE, STATE = 0;
CELL BASE = 10;
CELL STOP_HERE = 0;
#define CELL_SZ 4

// ------------------------------------------------------------
#ifdef __VS19__
CELL PC;
CELL* DSP;
#else
register CELL PC asm("esi");
register CELL* DSP asm("edi");
#endif

CELL addr;
CELL tmp;

// Circular stacks - no over/under-flow!
CELL dstk[DSZ];
CELL* DSS = dstk;
CELL* DSE = &(dstk[DSZ - 1]);

CELL rstk[RSZ];
CELL* RSS = rstk;
CELL* RSE = &(rstk[RSZ - 1]);
CELL* RSP = rstk;

#define TOS  (*DSP)
#define TOSR (*RSP)

#define IS_IMMEDIATE  0x01
#define IS_INLINE     0x02

typedef struct {
	CELL xt;
	BYTE flags;
	char name[30];
} ENTRY_T;

typedef struct {
	const char *asm_instr;
	const BYTE opcode;
	const BYTE flags;
} PRIM_T;

BYTE* the_memory = NULL;
ENTRY_T* the_dict = NULL;
int num_words = 0;

int all_ok = 1;
int line_num = 0;

#define BYTE_AT(src) (*(BYTE *)(src))
#define CELL_AT(src) (*(CELL *)(src))
#define CComma(val)  *(BYTE *)(HERE++) = val
#define Comma(val)   *(CELL *)HERE = val; HERE += CELL_SZ

// ------------------------------------------------------------
// To add functionality:
// 1. Add an entry to the enum below
// 2. Add an entry to the array of PRIM_T records later in the file.
// 3. Add a case to the switch in run_program()
// ------------------------------------------------------------

enum prims {
	NOP = 0, SETA, A, SETS, SRC, SETD, DST,
	FETCH, FETCH1, CFETCH, CFETCH1,
	STORE, STORE1, CSTORE, CSTORE1,
	CLIT, LIT, DUP, DROP, SWAP, OVER, COMMA, CCOMMA,
	EMIT, GOTORC, CLS, INC, DEC, HA, BA,
	CCALL, CRET, CALL, RET, SEMIC, JMP, JMPZ, JNZ,
	IF, ELSE, THEN, BEGIN, AGAIN, UNTIL, WHILE,
	ADD, SUB, MULT, DIV, TIMES2, DIVIDE2, PLUS_STAR,
	DTOR, RTOD, AND, XOR, DOT,
	BYE,
} OPCODES;

// ------------------------------------------------------------
PRIM_T thePrims[] = {
		  { "nop",     NOP,         0 }
		, { ">a",      SETA,        0 }
		, { "a",       A,           0 }
		, { ">src",    SETS,        0 }
		, { "src",     SRC,         0 }
		, { ">dst",    SETD,        0 }
		, { "dst",     DST,         0 }
		, { "@@",      FETCH,       0 }
		, { "@@+",     FETCH1,      0 }
		, { "c@@",     CFETCH,      0 }
		, { "c@@+",    CFETCH1,     0 }
		, { "!!",      STORE,       0 }
		, { "!!+",     STORE1,      0 }
		, { "c!!",     CSTORE,      0 }
		, { "c!!+",    CSTORE1,     0 }
		, { "#",       CLIT,        IS_IMMEDIATE }
		, { "lit",     LIT,         0 }
		, { "dup",     DUP,         0 }
		, { "drop",    DROP,        0 }
		, { "over",    OVER,        0 }
		, { ",",       COMMA,       0 }
		, { "c,",      CCOMMA,      0 }
		, { "emit",    EMIT,        0 }
		, { "gotoRC",  GOTORC,      0 }
		, { "cls",     CLS,         0 }
		, { "1+",      INC,         0 }
		, { "1-",      DEC,         0 }
		, { "(h)",     HA,          0 }
		, { "base",    BA,          0 }
		, { "call",    CCALL,       IS_IMMEDIATE }
		, { "ret",     CRET,        IS_IMMEDIATE }
		, { "do-call", CALL,        0 }
		, { "do-ret",  RET,         0 }
		, { ";",       SEMIC,       IS_IMMEDIATE }
		, { "jmp",     JMP,         0 }
		, { "jmpz",    JMPZ,        0 }
		, { "jnz",     JNZ,         0 }
		, { "if",      IF,          IS_IMMEDIATE }
		, { "else",    ELSE,        IS_IMMEDIATE }
		, { "then",    THEN,        IS_IMMEDIATE }
		, { "begin",   BEGIN,       IS_IMMEDIATE }
		, { "again",   AGAIN,       IS_IMMEDIATE }
		, { "until",   UNTIL,       IS_IMMEDIATE }
		, { "while",   WHILE,       IS_IMMEDIATE }
		, { "+",       ADD,         0 }
		, { "-",       SUB,         0 }
		, { "*",       MULT,        0 }
		, { "/",       DIV,         0 }
		, { "2*",      TIMES2,      0 }
		, { "2/",      DIVIDE2,     0 }
		, { "+*",      PLUS_STAR,   0 }
		, { ">r",      DTOR,        0 }
		, { "r>",      RTOD,        0 }
		, { "and",     AND,         0 }
		, { "xor",     XOR,         0 }
		, { "(.)",     DOT,         0 }
		, { "bye",     BYE,         0 }
		, { NULL,      0,           0 }
};


void StringCat(char *dst, const char *src)
{
	// goto the end of the dst string
	while (*dst)
		dst++;

	// copy the src string there
	while (*src)
		*(dst++) = *(src++);

	*dst = (char)0;
}

void StringCopy(char *dst, const char *src)
{
	*dst = (char)0;
	StringCat(dst, src);
}

char ToUpper(char c)
{
	return (c < 'a') ? c : (c > 'z') ? c : (c - 0x20);
}

size_t StringLen(char *cp)
{
	int i = 0;
	while (*(cp++))
		i++;
	return i;
}

#ifndef __VS19__
void fopen_s(FILE** pfp, const char *nm, const char *mode)
{
	FILE* fp = fopen(nm, mode);
	*pfp = fp;
}
#endif

// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------
void push(CELL v)
{
	if (++DSP > DSE)
		DSP = DSS;
	*DSP = v;
}

CELL pop()
{
	CELL v = *DSP;
	if (--DSP < DSS)
		DSP = DSE;
	return v;
}

// ------------------------------------------------------------
void rpush(CELL v)
{
	if (++RSP > RSE)
		RSP = RSS;
	*RSP = v;
}

CELL rpop()
{
	CELL v = *RSP;
	if (--RSP < RSS)
		RSP = RSE;
	return v;
}

PRIM_T *rfind_opcode(BYTE IR)
{
	for (int i = 0; ; i++)
	{
		PRIM_T *op = &thePrims[i];
		if (op->asm_instr == NULL)
		{
			return NULL;
		}
		if (op->opcode == IR)
		{
			return op;
		}
	}
}

ENTRY_T *rfind_word(CELL XT)
{
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
		if (ep->xt == XT)
		{
			return ep;
		}
	}
	return NULL;
}

// ------------------------------------------------------------
void do_dis(FILE *fp)
{
	const int lsz = 48, rsz = 128, osz = 64;
	char left[lsz], right[rsz], other[osz];
	BYTE IR;
	CELL reg1, reg2, reg3;
	CELL xt;

	PC = (CELL)the_memory;
	xt = CELL_AT(&the_memory[6]);
	long offset = PC - (long)xt;
	// int call_depth = 1;

	while (1)
	{
		if (PC >= STOP_HERE)
			return;

		IR = BYTE_AT(PC);
		xt = CELL_AT(PC);

		PRIM_T *op = rfind_opcode(IR);
		ENTRY_T *ep = rfind_word(xt);

		right[0] = (char)NULL;
		sprintf_s(left, lsz, "%08lx: %02x", PC-offset, IR);
		++PC;

		if (op)
		{
			sprintf_s(right, rsz, "%s", op->asm_instr);
		}

		// printf("-PC=%08lx,%02x-", PC, BYTE_AT(PC));
		switch (IR)
		{
			case NOP:
			case SETA:
			case A:
			case SETS:
			case SRC:
			case SETD:
			case DST:
			case FETCH:
			case STORE:
			case FETCH1:
			case STORE1:
			case CFETCH:
			case CSTORE:
			case CFETCH1:
			case CSTORE1:
			case DUP:
			case DROP:
			case SWAP:
			case OVER:
			case COMMA:
			case CCOMMA:
			case EMIT:
			case GOTORC:
			case CLS:
			case INC:
			case DEC:
			case HA:
			case BA:
			case CCALL:
			case CRET:
			case RET:
			case SEMIC:
			case IF:
			case ELSE:
			case THEN:
			case BEGIN:
			case AGAIN:
			case UNTIL:
			case WHILE:
			case ADD:
			case SUB:
			case MULT:
			case DIV:
			case PLUS_STAR:
			case DTOR:
			case RTOD:
			case AND:
			case XOR:
			case DOT:
			case TIMES2:
			case DIVIDE2:
			case BYE:
				break;


			case CLIT:
				sprintf_s(other, osz, " %08lx", CELL_AT(PC));
				StringCat(left, other);
				StringCat(right, other);
				PC += CELL_SZ;
				break;

			// usage: ( -- n ) - push n onto the stack
			case LIT:
				sprintf_s(other, osz, " %08lx", CELL_AT(PC));
				StringCat(left, other);
				StringCat(right, other);
				PC += CELL_SZ;
				break;

			case CALL:
				xt = CELL_AT(PC);
				sprintf_s(other, osz, " %08lx", xt);
				StringCat(left, other);
				StringCat(right, other);
				ep = rfind_word(xt);
				if (ep)
				{
					sprintf_s(other, osz, " (%s)", ep->name);
					StringCat(right, other);
				}
				PC += CELL_SZ;
				break;

			// usage: ( -- ) - return from subroutine
			case JMP:
				xt = CELL_AT(PC);
				sprintf_s(other, osz, " %08lx", xt);
				StringCat(left, other);
				StringCat(right, other);
				ep = rfind_word(xt);
				if (ep)
				{
					sprintf_s(other, osz, " (%s)", ep->name);
					StringCat(right, other);
				}
				PC += CELL_SZ;
				break;

			// usage: ( n -- n ) - if TOS=0, jump
			case JMPZ:
				sprintf_s(other, osz, " %08lx", CELL_AT(PC));
				StringCat(left, other);
				StringCat(right, other);
				PC += CELL_SZ;
				break;

			// usage: ( n -- n ) - if TOS!=0, jump
			case JNZ:
				sprintf_s(other, osz, " %08lx", CELL_AT(PC));
				StringCat(left, other);
				StringCat(right, other);
				PC += CELL_SZ;
				break;

			default:
				printf("Unknown IR (%02x) at PC=%08lx.", IR, PC - 1);
				return;
		}

		// printf("%-24s ; %s\n", left, right);
		fprintf(fp, "%-24s ; %s\n", left, right);
	}
}

// ------------------------------------------------------------
void read_words()
{
	CELL dict_sz = MAX_WORDS * sizeof(ENTRY_T);
	the_dict = (ENTRY_T*)malloc(dict_sz);
	memset(the_dict, 0, dict_sz);
	num_words = 0;

	fopen_s(&input_fp, MF_WDS, "rb");
	if (! input_fp)
	{
		return;
	}
	fseek(input_fp, 0, SEEK_END);
	long file_sz = ftell(input_fp);
	fseek(input_fp, 0, SEEK_SET);
	fread(the_dict, sizeof(ENTRY_T), file_sz, input_fp);
	fclose(input_fp);
	input_fp = NULL;
	num_words = (file_sz / sizeof(ENTRY_T))-1;
}

// ------------------------------------------------------------
void dis_words(FILE *fp)
{
	fprintf(fp, "; Words:\n");
	fprintf(fp, ";   XT     Flags  Name\n");
	fprintf(fp, ";------------------------------------------\n");

	for (int i = 1; i <= num_words; i++)
	{
		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
		fprintf(fp, "; %08lx  %02x   %s\n", ep->xt, ep->flags, ep->name);
	}
	fprintf(fp, "\n");
}

// ------------------------------------------------------------
int main(int argc, char** argv)
{
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

	fopen_s(&input_fp,  MF_BIN, "rb");
	if (!input_fp)
	{
		printf("Cannot open input file.");
		return 1;
	}
	fseek(input_fp, 0, SEEK_END);
	long file_sz = ftell(input_fp);

	the_memory = (BYTE*)malloc(file_sz);
	fseek(input_fp, 0, SEEK_SET);
	fread(the_memory, 1, file_sz, input_fp);
	fclose(input_fp);

	STOP_HERE = (CELL)the_memory + file_sz;

	fopen_s(&output_fp, MF_DIS, "wt");
	if (!output_fp)
	{
		printf("Cannot open output file.");
		return 1;
	}

	read_words();

	dis_words(output_fp);
	do_dis(output_fp);
	fclose(output_fp);

	return 0;
}
