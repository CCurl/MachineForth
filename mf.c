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
#define DSZ 64		// data stack size (circular)
#define RSZ 64		// return stack size (circular)
#define MAX_WORDS 2048
// ------------------------------------------------------------

HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

FILE *input_fp = NULL;
FILE *output_fp = NULL;

CELL MEM_SZ = (1024 * MEM_SZ_K);
CELL HERE, STATE = 0;
CELL BASE = 10;
#define CELL_SZ 4

// ------------------------------------------------------------
#ifdef __VS19__
CELL PC;
CELL *DSP;
#else
register CELL PC asm("esi");
register CELL *DSP asm("edi");
#endif

CELL addr, src, dst;
CELL tmp;

// Circular stacks - no over/under-flow!
CELL dstk[DSZ];
CELL *DSS = dstk;
CELL *DSE = &(dstk[DSZ - 1]);

CELL rstk[RSZ];
CELL *RSS = rstk;
CELL *RSE = &(rstk[RSZ - 1]);
CELL *RSP = rstk;

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
	NOP = 0, SETA, A,  SETS, S, SETD, D, 
	FETCH, FETCH1, CFETCH, CFETCH1, 
	STORE, STORE1, CSTORE, CSTORE1,
	CLIT, LIT, DUP, DROP, SWAP, OVER, COMMA, CCOMMA,
	EMIT, GOTORC, CLS, INC, DEC, HA, BA,
	CCALL, CRET, CALL, RET, SEMIC,  JMP, JMPZ, JNZ,
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
		, { ">src",    SETS,        0 }
		, { "src",     S,           0 }
		, { ">dst",    SETD,        0 }
		, { "dst",     D,           0 }
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


void StringCopy(char *dst, const char *src)
{
	while (*src)
		*(dst++) = *(src++);
	*dst = (char)0;
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

// ------------------------------------------------------------
void run_program(CELL start)
{
	BYTE IR;
	CELL reg1, reg2, reg3;

	PC = start;
	int call_depth = 1;

	while (1)
	{
		// printf("-PC=%08lx,%02x-", PC, BYTE_AT(PC));
		IR = BYTE_AT(PC++);
		switch (IR)
		{
		case NOP:
			break;

		// usage: ( n -- ) - MACRO: compile a literal
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

		// usage: ( -- a ) - sets current address
		case SETA:
			addr = pop();
			break;

		// usage: ( -- a ) - current address
		case A:
			push(addr);
			break;

		// usage: ( -- a ) - sets current address
		case SETS:
			src = pop();
			break;

		// usage: ( -- a ) - current address
		case S:
			push(src);
			break;

		// usage: ( -- a ) - sets current address
		case SETD:
			dst = pop();
			break;

		// usage: ( -- a ) - current address
		case D:
			push(dst);
			break;

		// usage: ( -- n ) - @, fetch CELL at src
		case FETCH:
			push(CELL_AT(src));
			break;

		// usage: ( -- n ) - @+, fetch CELL, increment src by CELL
		case FETCH1:
			push(CELL_AT(src));
			src += CELL_SZ;
			break;

		// usage: ( -- n ) - c@, fetch BYTE at src
		case CFETCH:
			push(BYTE_AT(src));
			break;

		// usage: ( -- n ) - c@+, fetch NYTE, increment src by 1
		case CFETCH1:
			push(BYTE_AT(src));
			src++;
			break;

		// usage: ( n -- ) - !, store TOS to dst (CELL)
		case STORE:
			CELL_AT(dst) = pop();
			break;

		// usage: ( n -- ) - c!, store TOS to dst (BYTE)
		case CSTORE:
			BYTE_AT(dst) = pop();
			break;

		// usage: ( n -- ) - !+, store TOS to dst (CELL), next CELL
		case STORE1:
			CELL_AT(dst) = pop();
			dst += CELL_SZ;
			break;

		// usage: ( n -- ) - c!+, store TOS to dst (CELL), next BYTE
		case CSTORE1:
			BYTE_AT(dst) = pop();
			dst++;
			break;

		// usage: ( n -- n n ) - dups TOS
		case DUP:
			reg1 = TOS;
			push(reg1);
			break;

		// usage: ( n -- )
		case DROP:
			reg1 = pop();
			break;

		// usage: ( n1 n2 -- n2 n1 )
		case SWAP:
			reg1 = pop();
			reg2 = pop();
			push(reg1);
			push(reg2);
			break;

		// usage: ( n1 n2 -- n1 n2 n1 ) - standard OVER
		case OVER:
			reg1 = pop();
			reg2 = TOS;
			push(reg1);
			push(reg2);
			break;

		// usage: ( n -- ) - Standard , behavior
		case COMMA:
			CELL_AT(HERE) = pop();
			HERE += CELL_SZ;
			break;

		// usage: ( n -- ) - Standard c, behavior
		case CCOMMA:
			*(BYTE *)(HERE++) = (BYTE)pop();
			break;

		// usage: ( c -- ) - prints char to  screen
		case EMIT:
			reg1 = pop();
			printf("%c", (reg1 & 0xFF));
			break;

		// usage: ( r c -- ) - move cursor to screen pos (r,c)
		case GOTORC:
		{
			COORD pos;
			reg1 = pop();
			reg2 = pop();
			pos.Y = (short)reg2;
			pos.X = (short)reg1;
			SetConsoleCursorPosition(hStdout, pos);
		}
			break;

		// usage: ( -- ) - clears the screen, moces cursor to (0,0)
		case CLS:
		{
			COORD pos = { 0, 0 };
			GetConsoleScreenBufferInfo(hStdout, &csbi);
			reg1 = csbi.dwSize.X * csbi.dwSize.Y;
			FillConsoleOutputCharacter(hStdout, ' ', reg1, pos, &reg2);
		}
			break;

		// usage: ( n -- n+1 ) - increments TOS
		case INC:
			TOS++;
			break;

		// usage: ( n -- n-1 ) - decrements TOS
		case DEC:
			TOS--;
			break;

		// usage: ( -- a ) - push next code address
		case HA:
			push((CELL)&HERE);
			break;

		// usage: ( -- a ) - push next code address
		case BA:
			push((CELL)&BASE);
			break;

		// usage: ( addr -- ) - MACRO: compile call to addr
		case CCALL:
			CComma(CALL);
			reg1 = pop();
			Comma(reg1);
			break;

		// usage: ( -- ) - MACRO: compile RET
		case CRET:
			CComma(RET);
			break;

		// usage: ( -- ) - calls subroutine at (PC)
		case CALL:
			reg1 = CELL_AT(PC);
			PC += CELL_SZ;
			rpush(PC);
			PC = reg1;
			++call_depth;
			break;

		// usage: ( -- ) - return from subroutine
		case RET:
			PC = rpop();
			if (--call_depth < 1)
				return;
			break;

		// usage: ( -- ) - MACRO: end of word
		case SEMIC:
			CComma(RET);
			STATE = 0;
			break;

		// usage: ( -- ) - jumps to (PC)
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

		// usage: ( -- a ) - MACRO: if (jmpz placeholder)
		case IF:
			CComma(JMPZ);
			push(HERE);
			Comma(0);
			break;

		// usage: ( -- a ) - MACRO: else ()
		case ELSE:
			reg1 = pop();
			CComma(JMP);
			push(HERE);
			Comma(0);
			CELL_AT(reg1) = HERE;
			break;

		// usage: ( -- a ) - MACRO: then
		case THEN:
			reg1 = pop();
			CELL_AT(reg1) = HERE;
			break;

		// usage: ( -- a ) - MACRO: push HERE
		case BEGIN:
			push(HERE);
			break;

		// usage: ( a -- ) - MACRO: compile if TOS=true, jump to a
		case AGAIN:
			reg1 = pop();
			CComma(JMP);
			Comma(reg1);
			break;

		// usage: ( a -- ) - MACRO: compile if TOS=false, jump to a
		case UNTIL:
			reg1 = pop();
			CComma(JMPZ);
			Comma(reg1);
			break;

		// usage: ( a -- ) - MACRO: compile if TOS=true, jump to a
		case WHILE:
			reg1 = pop();
			CComma(JNZ);
			Comma(reg1);
			break;

		// usage: ( n1 n2 -- n1+n2 ) - adds n1 and n2
		case ADD:
			reg1 = pop();
			TOS += reg1;
			break;

		// usage: ( n1 n2 -- n1-n2 ) - subtracts n2 from n1
		case SUB:
			reg1 = pop();
			TOS -= reg1;
			break;

		// usage: ( n1 n2 -- n1*n2 ) - multiplies n1 and n2
		case MULT:
			reg1 = pop();
			TOS *= reg1;
			break;

		// usage: ( n1 n2 -- n1/n2 ) - divides n1 by n2
		case DIV:
			reg1 = pop();
			TOS /= reg1;
			break;

		// usage: ( n1 n2  -- n ) - ???
		case PLUS_STAR:
			reg1 = pop();
			TOS += reg1;
			push(99999);
			break;

		// usage: ( D:n -- R:n ) - moves TOS to return stack
		case DTOR:
			rpush(pop());
			break;

		// usage: ( R:n -- D:n ) - moves return stack TOS to data stack
		case RTOD:
			push(rpop());
			break;

		// usage: ( n1 n2 -- n1&n2 ) - bitwise AND
		case AND:
			reg1 = pop();
			TOS &= reg1;
			break;

		// usage: ( n1 n2 -- n1^n2 ) - bitwise XOR
		case XOR:
			reg1 = pop();
			TOS ^= reg1;
			break;

		// usage: ( n1 -- ) - print number on TOS
		case DOT:
			reg1 = pop();
			if (BASE == 16)
				printf("$%02X", reg1);
			else if (BASE == 10)
				printf("#%d", reg1);
			else
				printf("(%d in base %d)", reg1, BASE);
			break;

		// usage: ( n1 -- n1*2 ) - multiply TOS by 2
		case TIMES2:
			TOS *= 2;
			break;

		// usage: ( n1 -- n1/2 ) - divide TOS by 2
		case DIVIDE2:
			TOS /= 2;
			break;

		// usage: ( -- ) - breaks out of loop
		case BYE:
			return;

		default:
			printf("Unknown IR (%02x) at PC=%08lx.", IR, PC-1);
			return;
		}
	}
}

// ------------------------------------------------------------
void define_word(char *word)
{
	ENTRY_T *ep = (ENTRY_T *)&(the_dict[++num_words]);
	size_t maxLen = sizeof(ep->name) - 1;
	if (StringLen(word) > maxLen)
		word[maxLen] = (char)0;

	ep->xt = HERE;
	ep->flags = 0;
	StringCopy(ep->name, word);
}

ENTRY_T *find_word(const char *word)
{
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T *ep = (ENTRY_T *)&(the_dict[i]);
		if (_stricmp(word, ep->name) == 0)
		{
			return ep;
		}
	}
	return NULL;
}

void dump_words(FILE *fp)
{
	fprintf(output_fp, "\nWords:\n");
	fprintf(output_fp, " seq  addr      xt        flg name \n");
	fprintf(output_fp, "----------------------------------------------\n");
	
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T *ep = (ENTRY_T *)&(the_dict[i]);
		fprintf(fp, "%4d, %08lx, %08lx, %02x, %s\n", i, (CELL)ep, (ep->xt - (CELL)the_memory), ep->flags, ep->name);
	}
}

// ------------------------------------------------------------
// Returns a pointer to the first char after the first word in the line
char *getword(char *line, char *word)
{
	char *cp = word;

	// Skip beginning WS
	while ((*line) && (*line <= ' '))
	{
		line++;
	}

	// Copy chars up to ' ' or EOL or 1st non-printable char
	while ((*line) && (*line > ' '))
	{
		*(cp++) = *(line++);
	}
	*cp = 0;

	return line;
}

// ------------------------------------------------------------
int is_number(char *word, long* the_num, int base)
{
	const char *possible_chars = "0123456789ABCDEF";
	char valid_chars[24];
	long my_num = 0;
	char *w = word;
	int is_neg = 0;

	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	{
		*the_num = word[1];
		return 1;
	}

	if (*w == '%') { base =  2; ++w; }
	if (*w == '#') { base = 10; ++w; }
	if (*w == '$') { base = 16; ++w; }

	StringCopy(valid_chars, possible_chars);
	valid_chars[base] = (char)0;

	// One leading minus sign is OK
	if ((base == 10) && (*w == '-'))
	{
		is_neg = 1;
		w++;
	}

	while (*w)
	{
		char ch = *(w++);
		ch = ToUpper(ch);
		char *pos = strchr(valid_chars, ch);
		if (pos == 0)
			return 0;

		BYTE digit = (BYTE)(pos - valid_chars);
		my_num = (my_num * base) + digit;
	}

	*the_num = is_neg ? -my_num : my_num;
	return 1;
}

// ------------------------------------------------------------
char *parseword(char *line, char *word)
{
	if (_stricmp(word, ":") == 0)
	{
		line = getword(line, word);
		if (StringLen(word) > 0)
		{
			define_word(word);
			STATE = 1;
		}
		return line;
	}
	for (int i = 0; ; i++)
	{
		OPCODE_T op = theOpcodes[i];
		if (op.asm_instr == NULL)
		{
			break;
		}
		if (_stricmp(word, op.asm_instr) == 0)
		{
			if ((STATE == 0) || (op.flags == IS_IMMEDIATE))
			{
				PC = HERE + 0x100;
				CELL_AT(PC) = op.opcode;
				CELL_AT(PC + 1) = RET;
				run_program(PC);
			}
			else
			{
				CComma(op.opcode);
			}
			return line;
		}
	}
	ENTRY_T *ep = find_word(word);
	if (ep)
	{
		if ((STATE == 0) || (ep->flags == IS_IMMEDIATE))
		{
			run_program(ep->xt);
		}
		else
		{
			CComma(CALL);
			Comma(ep->xt);
		}
		return line;
	}

	long num = 0;
	if (is_number(word, &num, BASE))
	{
		push((CELL)num);
		if (STATE == 1)
		{
			CComma(LIT);
			Comma(pop());
		}
		return line;
	}
	printf("line #%d, [%s], '%s'??", line_num, line, word);
	all_ok = 0;
	return line;
}

void parse_line(char *line)
{
	char word[64];
	line = getword(line, word);
	while (word[0])
	{
		if ((StringLen(word) == 1) && (word[0] == '\\'))
			return;
		line = parseword(line, word);
		line = getword(line, word);
	}
}

void compile()
{
	char buf[256];

	fopen_s(&input_fp, MF_SRC, "rt");
	if (!input_fp)
	{
		printf("can't open input file!");
		return;
	}

	HERE = (CELL)the_memory;
	CComma(JMP);
	Comma(0);
	line_num = 0;

	while (fgets(buf, 256, input_fp) == buf)
	{
		++line_num;
		parse_line(buf);
	}

	CELL_AT(the_memory + 1) = the_dict[num_words].xt;

	fclose(input_fp);
	input_fp = NULL;
}

// ------------------------------------------------------------
void write_info_file()
{
	fopen_s(&output_fp, MF_INF, "wt");
	if (!output_fp)
	{
		printf("ERROR: Can't open info file!");
		return;
	}

	fprintf(output_fp, "Opcodes:\n-----------------------------\n");
	for (int i = 0; ; i++)
	{
		OPCODE_T op = theOpcodes[i];
		if (op.asm_instr == NULL)
			break;
		fprintf(output_fp, "%02x, (%02d), %s\n", op.opcode, op.opcode, op.asm_instr);
	}

	fprintf(output_fp, "\nthe_memory: %08lx\n", (CELL)the_memory);
	dump_words(output_fp);

	fclose(output_fp);
	output_fp = NULL;
}

void write_bin_file()
{
	fopen_s(&output_fp, MF_BIN, "wb");
	if (!output_fp)
	{
		printf("ERROR: Can't open output file!");
		return;
	}

	int num = fwrite(the_memory, 1, MEM_SZ, output_fp);
	fclose(output_fp);
	output_fp = NULL;
}

// ------------------------------------------------------------
int main(int argc, char **argv)
{
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

	DSP = dstk;
	the_memory = (BYTE *)malloc(MEM_SZ);
	memset(the_memory, 0, MEM_SZ);

	CELL dict_sz = MAX_WORDS * sizeof(ENTRY_T);
	the_dict = (ENTRY_T *)malloc(dict_sz);
	memset(the_dict, 0, dict_sz);

	compile();
	write_info_file();
	write_bin_file();
	// printf("\n");

	if (all_ok)
	{
		CELL st = GetTickCount();
		run_program((CELL)the_memory);
		CELL tt = GetTickCount() - st;
		printf("program ran for %d.%03d seconds\n", tt / 1000, tt % 1000);
	}
	return 0;
}
