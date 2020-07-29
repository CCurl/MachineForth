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
	const char* asm_instr;
	const BYTE opcode;
	const BYTE flags;
} OPCODE_T;

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
// 2. Add an entry to the array of OPCODE_T records later in the file.
// 3. Add a case to the switch in run_program()
// ------------------------------------------------------------

enum prims {
	NOP = 0,
	SETA, A, AFETCH, ASTORE, AFETCH1, ASTORE1,
	AT_PLUS, STORE_PLUS, AT_PLUS1, STORE_PLUS1,
	CLIT, LIT, DUP, DROP, SWAP, OVER, COMMA, CCOMMA,
	EMIT, GOTORC, CLS, INC, DEC, HA, BA,
	CCALL, CRET, CALL, RET, SEMIC, JMP, JMPZ, JNZ,
	IF, ELSE, THEN, BEGIN, AGAIN, UNTIL, WHILE,
	ADD, SUB, MULT, DIV, TIMES2, DIVIDE2, PLUS_STAR,
	DTOR, RTOD, AND, XOR, DOT,
	BYE,
} OPCODES;

// ------------------------------------------------------------
OPCODE_T theOpcodes[] = {
		  { "nop",     NOP,         0 }
		, { ">a",      SETA,        0 }
		, { "a",       A,           0 }
		, { "a@",      AFETCH,      0 }
		, { "a!",      ASTORE,      0 }
		, { "a@1",     AFETCH1,     0 }
		, { "a!1",     ASTORE1,     0 }
		, { "@+",      AT_PLUS,     0 }
		, { "!+",      STORE_PLUS,  0 }
		, { "@+1",     AT_PLUS1,    0 }
		, { "!+1",     STORE_PLUS1, 0 }
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
		, { "(call)",  CALL,        0 }
		, { "(ret)",   RET,         0 }
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


void StringCopy(char* dst, const char* src)
{
	while (*src)
		*(dst++) = *(src++);
	*dst = (char)0;
}

char ToUpper(char c)
{
	return (c < 'a') ? c : (c > 'z') ? c : (c - 0x20);
}

size_t StringLen(char* cp)
{
	int i = 0;
	while (*(cp++))
		i++;
	return i;
}

#ifndef __VS19__
void fopen_s(FILE** pfp, const char* nm, const char* mode)
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

OPCODE_T*rfind_opcode(BYTE IR)
{
	for (int i = 0; ; i++)
	{
		OPCODE_T *op = &theOpcodes[i];
		if (op->opcode == NULL)
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
	const int lsz = 48, rsz = 128;
	char left[lsz], right[rsz];
	BYTE IR;
	CELL reg1, reg2, reg3;
	CELL xt;

	PC = the_memory;
	int call_depth = 1;


	while (1)
	{
		IR = BYTE_AT(PC);
		xt = CELL_AT(PC);

		OPCODE_T *op = rfind_opcode(IR);
		ENTRY_T *ep = rfind_word(xt);

		right[0] = (char)NULL;
		sprintf_s(left, lsz, "%08lx: %02x", PC, IR);
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
			case AFETCH:
			case ASTORE:
			case AFETCH1:
			case ASTORE1:
			case AT_PLUS:
			case STORE_PLUS:
			case AT_PLUS1:
			case STORE_PLUS1:
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
				CComma(LIT);
				Comma(pop());
				PC += CELL_SZ;
				break;

			// usage: ( -- n ) - push n onto the stack
			case LIT:
				reg1 = CELL_AT(PC);
				push(reg1);
				PC += CELL_SZ;
				break;

			case CALL:
				reg1 = CELL_AT(PC);
				PC += CELL_SZ;
				rpush(PC);
				PC = reg1;
				++call_depth;
				break;

			// usage: ( -- ) - return from subroutine
			case JMP:
				PC = CELL_AT(PC);
				break;

			// usage: ( n -- n ) - if TOS=0, jump
			case JMPZ:
				if (TOS == 0)
					PC = CELL_AT(PC);
				else
					PC += CELL_SZ;
				break;

			// usage: ( n -- n ) - if TOS!=0, jump
			case JNZ:
				if (TOS != 0)
					PC = CELL_AT(PC);
				else
					PC += CELL_SZ;
				break;

			default:
				printf("Unknown IR (%02x) at PC=%08lx.", IR, PC - 1);
				return;
		}
	}
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
	long sz = ftell(input_fp);

	the_memory = (BYTE*)malloc(sz);
	fseek(input_fp, 0, SEEK_END);
	fread(the_memory, 1, sz, input_fp);
	fclose(input_fp);

	fopen_s(&output_fp, MF_DIS, "wt");
	if (!output_fp)
	{
		printf("Cannot open output file.");
		return 1;
	}

	do_dis(output_fp);
	fclose(output_fp);

	return 0;
}
