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
#include <ctype.h>

typedef unsigned long CELL;
typedef unsigned char BYTE;

// Things that would change from usage to usage
CELL MEM_SZ = (1024 * 1);
#define MF_SRC "mf.src"
#define MF_BIN "mf.bin"
#define MF_INF "mf.txt"
#define DSZ 64		// data stack size (circular)
#define RSZ 64		// return stack size (circular)
#define MAX_WORDS 2048

// ------------------------------------------------------------
// To add functionality:
// 1. Add an entry to the enum below
// 2. Add an entry to the array of OPCODE_T records later in the file.
// 3. Add a case to the switch in run_program()
// ------------------------------------------------------------

typedef struct {
	const char *asm_instr;
	const BYTE opcode;
	const BYTE flags;
} OPCODE_T;

enum {
	NOP = 0, 
	SETA, A, AFETCH, ASTORE, 
	AT_PLUS, STORE_PLUS, AT_PLUS1, STORE_PLUS1,
	LIT, DUP, DROP, SWAP, OVER,
	EMIT, GOTORC, CLS, INC, DEC, HA,
	CCALL, CRET, CALL, RET, JMP, JMPZ, JNZ,
	IF, ELSE, THEN, BEGIN, AGAIN, UNTIL, WHILE,
	ADD, SUB, MULT, DIV, TIMES2, DIVIDE2, PLUS_STAR,
	DTOR, RTOD, AND, XOR,
	BYE,
} OPCODES;


// The implementation
HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

FILE* input_fp = NULL;
FILE* output_fp = NULL;

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

CELL addr;
CELL tmp;
int call_depth = 0;

// Circular stacks - no over/under-flow!
// - the top of data stack is TOS
// - the top of return stack is TOSR

// The stacks
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

BYTE* the_memory = NULL;
ENTRY_T* the_dict = NULL;
int num_words = 0;

int _QUIT_HIT;
int all_ok = 1;

#define BYTE_AT(src) (*(BYTE *)(src))
#define CELL_AT(src) (*(CELL *)(src))

#define CComma(val)  *(BYTE *)(HERE++) = val
#define Comma(val)   *(CELL *)HERE = val; HERE += CELL_SZ

#ifndef __VS19__
void strcpy_s(char* dst, CELL num, const char* src)
{
	while (*src)
	{
		*(dst++) = *(src++);
	}
}

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

// ------------------------------------------------------------
CELL pop()
{
	CELL v = *DSP;
	if (--DSP < DSS)
		DSP = DSE;
	return v;
}

// ------------------------------------------------------------
void dumpStack(int num)
{
	num = (num == 0) ? DSZ : num;
	printf("( ");
	for (int i = 0; i < num; i++)
		printf("%d ", pop());
	printf(")");
}

// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------
void rpush(CELL v)
{
	if (++RSP > RSE)
		RSP = RSS;
	*RSP = v;
}

// ------------------------------------------------------------
CELL rpop()
{
	CELL v = *RSP;
	if (--RSP < RSS)
		RSP = RSE;
	return v;
}

// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------

OPCODE_T theOpcodes[] = {
		  { "nop",     NOP,         0 }
		, { ">a",      SETA,        0 }
		, { "a",       A,           0 }
		, { "a@",      AFETCH,      0 }
		, { "a!",      ASTORE,      0 }
		, { "@+",      AT_PLUS,     0 }
		, { "!+",      STORE_PLUS,  0 }
		, { "@+1",     AT_PLUS1,    0 }
		, { "!+1",     STORE_PLUS1, 0 }
		//{ "#",       CLIT,        IS_IMMEDIATE }
		, { "lit",     LIT,         0 }
		, { "dup",     DUP,         0 }
		, { "drop",    DROP,        0 }
		, { "over",    OVER,        0 }
		, { "emit",    EMIT,        0 }
		, { "gotoRC",  GOTORC,      0 }
		, { "cls",     CLS,         0 }
		, { "1+",      INC,         0 }
		, { "1-",      DEC,         0 }
		, { "(h)",     HA,          0 }
		, { "call",    CCALL,       IS_IMMEDIATE }
		, { "ret",     CRET,        IS_IMMEDIATE }
		, { "(call)",  CALL,        0 }
		, { ";",       RET,         IS_IMMEDIATE }
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
		, { "bye",     BYE,         0 }
		, { NULL,      0,           0 }
};

// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
void run_program(CELL start)
{
	BYTE IR;
	CELL reg1, reg2, reg3;

	PC = start;
	call_depth = 1;

	while (1)
	{
		printf("-PC=%08lx,%02x-", PC, BYTE_AT(PC));
		IR = BYTE_AT(PC++);
		switch (IR)
		{
		case NOP:
			break;

		// usage: ( -- a ) - sets current address
		case SETA:
			addr = pop();
			break;

		// usage: ( -- a ) - current address
		case A:
			push(addr);
			break;

		// usage: ( -- n ) - fetch cell from current address
		case AFETCH:
			reg1 = CELL_AT(addr);
			push(reg1);
			break;

		// usage: ( n -- ) - store TOS cell to current address
		case ASTORE:
			reg1 = pop();
			CELL_AT(addr) = reg1;
			break;

		// usage: ( -- n ) - a@, increment a by CELL
		case AT_PLUS:
			reg1 = CELL_AT(addr);
			push(reg1);
			addr += CELL_SZ;
			break;

		// usage: ( n -- ) - a!, increment a by CELL
		case STORE_PLUS:
			reg1 = pop();
			CELL_AT(addr) = reg1;
			addr += CELL_SZ;
			break;

		// usage: ( -- n ) - a@, increment a by CELL
		case AT_PLUS1:
			reg1 = BYTE_AT(addr);
			push(reg1);
			++addr;
			break;

		// usage: ( n -- ) - a!, increment a by CELL
		case STORE_PLUS1:
			reg1 = pop();
			BYTE_AT(addr) = reg1;
			++addr;
			break;

		// usage: ( -- n ) - pushed n onto the stack
		case LIT:
			reg1 = CELL_AT(PC);
			push(reg1);
			PC += CELL_SZ;
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
			printf("*if*%08lx*", HERE);
			push(HERE);
			Comma(0);
			break;

		// usage: ( -- a ) - MACRO: else ()
		case ELSE:
			printf("*else*");
			reg1 = pop();
			CComma(JMP);
			push(HERE);
			Comma(0);
			CELL_AT(reg1) = HERE;
			break;

		// usage: ( -- a ) - MACRO: then
		case THEN:
			reg1 = pop();
			printf("*then*%08lx*", reg1);
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

// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
// *********************************************************************
void define_word(char* word)
{
	// printf("\ndefine_word(%s, %d)", word, num_words + 1);
	ENTRY_T* ep = (ENTRY_T*)&(the_dict[++num_words]);
	size_t maxLen = sizeof(ep->name) - 1;
	if (strlen(word) > maxLen)
		word[maxLen] = (char)0;

	ep->xt = HERE;
	ep->flags = 0;
	strcpy_s(ep->name, sizeof(ep->name), word);
}

void set_flags(BYTE flags)
{
	ENTRY_T* ep = (ENTRY_T*)&(the_dict[num_words]);
	ep->flags = flags;
}

ENTRY_T* find_word(const char* word)
{
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
		if (_stricmp(word, ep->name) == 0)
		{
			return ep;
		}
	}
	return NULL;
}

void dump_words(FILE *fp)
{
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
		fprintf(fp, "%4d, %08lx, %08lx, %02x, %s\n", i, (CELL)ep, ep->xt, ep->flags, ep->name);
	}
}

// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------

// Returns a pointer to the first char after the first word in the line
// NB: this is NOT a counted string
char* getword(char* line, char* word)
{
	char* cp = word;

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

int is_number(char* word, long* the_num, int base)
{
	int is_neg = 0;
	char* w = word;
	long my_num = 0;
	const char* possible_chars = "0123456789abcdef";
	char valid_chars[24];

	if ((word[0] == '\'') && (word[2] == '\'') && (word[3] == (char)0))
	{
		*the_num = word[1];
		return 1;
	}

	if (*w == '%')
	{
		base = 2;
		++w;
	}

	if (*w == '#')
	{
		base = 10;
		++w;
	}

	if (*w == '$')
	{
		base = 16;
		++w;
	}

	strcpy_s(valid_chars, sizeof(valid_chars), possible_chars);
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
		ch = tolower(ch);
		char* pos = strchr(valid_chars, ch);
		if (pos == 0)
		{
			return 0;
		}
		CELL digit = (CELL)(pos - valid_chars);
		my_num = (my_num * base) + digit;
	}

	if (is_neg)
	{
		my_num = -my_num;
	}
	*the_num = my_num;
	return 1;
}

int line_num;
char* parseword(char* line, char* word)
{
	if (word[0] == '\\')
	{
		*line = 0;
		return line;
	}
	if (_stricmp(word, "variable") == 0)
	{
		// [lit] [cell]    [ret] [val]
		// 100    101-104   105   106
		line = getword(line, word);
		if (strlen(word) > 0)
		{
			define_word(word);
			CComma(LIT);
			Comma(HERE+5);
			CComma(RET);
			Comma(0);
		}
		return line;
	}
	if (_stricmp(word, "const") == 0)
	{
		line = getword(line, word);
		if (strlen(word) > 0)
		{
			define_word(word);
			tmp = pop();
			CComma(LIT);
			Comma(tmp);
			CComma(RET);
		}
		return line;
	}
	if (_stricmp(word, ":") == 0)
	{
		line = getword(line, word);
		if (strlen(word) > 0)
		{
			define_word(word);
			STATE = 1;
		}
		return line;
	}
	if (_stricmp(word, ";") == 0)
	{
		CComma(RET);
		STATE = 0;
		return line;
	}
	if (_stricmp(word, ";-") == 0)
	{
		CComma(RET);
		STATE = 0;
		return line;
	}
	if (_stricmp(word, "immediate") == 0)
	{
		set_flags(IS_IMMEDIATE);
	}
	// if (_stricmp(word, "if") == 0)
	// {
	// 	CComma(JMPZ);
	// 	push(HERE);
	// 	Comma(0xFFFFFFFF);
	// 	return line;
	// }
	// if (_stricmp(word, "then") == 0)
	// {
	// 	tmp = pop();
	// 	CELL_AT(tmp) = HERE;
	// 	return line;
	// }
	if (_stricmp(word, "begin") == 0)
	{
		push(HERE);
		return line;
	}
	if (_stricmp(word, "again") == 0)
	{
		CComma(JMP);
		Comma(pop());
		return line;
	}
	if (_stricmp(word, "while") == 0)
	{
		CComma(JNZ);
		Comma(pop());
		return line;
	}
	if (_stricmp(word, "until") == 0)
	{
		CComma(JMPZ);
		Comma(pop());
		return line;
	}
	if (_stricmp(word, "jmp") == 0)
	{
		// printf("-jmp:%08lx-", TOS);
		CComma(JMP);
		Comma(pop());
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
			// printf("\n(%s->%02X)", word, op.opcode);
			if (STATE == 1)
			{
				if (op.flags == IS_IMMEDIATE)
				{
					PC = HERE + 0x100;
					CELL_AT(PC) = op.opcode;
					CELL_AT(PC+1) = RET;
					run_program(PC);
					CComma(op.opcode);
				}
				else
				{
					CComma(op.opcode);
				}
			}
			else
			{
				PC = HERE + 0x100;
				CELL_AT(PC) = op.opcode;
				CELL_AT(PC+1) = RET;
				run_program(PC);
				// printf("---\n");
			}
			return line;
		}
	}
	ENTRY_T* ep = find_word(word);
	if (ep)
	{
		if (STATE == 1)
		{
			CComma(CALL);
			Comma(ep->xt);
		}
		else
		{
			run_program(ep->xt);
			// printf("---\n");
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

void parse(char* line)
{
	char word[64];
	// printf("%s", line);
	line = getword(line, word);
	while (word[0])
	{
		line = parseword(line, word);
		line = getword(line, word);
	}
}

void doTest()
{
	return;
	// push(5); dup(); gotoRC();
	printf("memory: 0x%08lX\n", (CELL)the_memory);

	// CELL stop = 1000 * 1000 * 500;
	CELL stop = 1000 * 1000 * 50;
	CELL start = GetTickCount();

	printf("Tests: push() ...");
	for (CELL i = 1; i <= stop; i++)
	{
		push(i);
	}
	printf(" pop() ... ");
	for (CELL i = 0; i < stop; i++)
	{
		tmp = pop();
	}
	CELL end = GetTickCount();
	CELL tt = end - start;
	printf(" %d.%d seconds\n", tt / 1000, tt % 1000);
	dumpStack(8); printf("\n");

	//Comma(0x22222222); define_word("test0");
	//Comma(0x33333333); define_word("test1");
	//Comma(0x44444444); define_word("test2");
	//Comma(0x55555555); define_word("test1");
	//dump_words();

	ENTRY_T* ep;
	ep = find_word("test0"); printf("\n%lx", (CELL)ep);
	ep = find_word("test1"); printf(" %lx", (CELL)ep);
	ep = find_word("test3"); printf(" %lx", (CELL)ep);
}

void compile()
{
	HERE = (CELL)the_memory;
	CComma(JMP);
	Comma(0xEEEEEEEE);

	for (int i = 0; ; i++)
	{
		OPCODE_T op = theOpcodes[i];
		if (op.asm_instr == NULL)
		{
			break;
		}
		// printf("\n%02x, %-8s", op.opcode, op.asm_instr);
	}

	doTest();
	// return;

	fopen_s(&input_fp, MF_SRC, "rt");
	if (!input_fp)
	{
		printf("can't open input file!");
		exit(1);
	}

	line_num = 0;
	char buf[256];
	while (fgets(buf, 256, input_fp) == buf)
	{
		++line_num;
		parse(buf);
	}

	// printf(".got-here.");
	CELL_AT(the_memory + 1) = the_dict[num_words].xt;

	fclose(input_fp);
	input_fp = NULL;
}

// *********************************************************************
void write_info_file()
{
	fopen_s(&output_fp, MF_INF, "wt");
	if (!output_fp)
	{
		printf("ERROR: Can't open info file!");
		exit(1);
	}

	fprintf(output_fp, "Opcodes:\n");
	fprintf(output_fp, "-----------------------------\n");
	for (int i = 0; ; i++)
	{
		OPCODE_T op = theOpcodes[i];
		if (op.asm_instr == NULL)
		{
			break;
		}
		fprintf(output_fp, "%02x, (%02d), %s\n", op.opcode, op.opcode, op.asm_instr);
	}
	fprintf(output_fp, "\nWords:\n");
	dump_words(output_fp);

	fprintf(output_fp, "\nthe_memory: %08lx\n", the_memory);

	fclose(output_fp);
	output_fp = NULL;
}

// *********************************************************************
void write_bin_file()
{
	fopen_s(&output_fp, MF_BIN, "wb");
	if (!output_fp)
	{
		printf("ERROR: Can't open output file!");
		exit(1);
	}

	int num = fwrite(the_memory, 1, MEM_SZ, output_fp);
	fclose(output_fp);
	output_fp = NULL;
	// printf("\n%s, %d bytes written.\n", MF_BIN, num);
}

int main(int argc, char** argv)
{
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

	DSP = dstk;

	the_memory = (BYTE*)malloc(MEM_SZ);
	memset(the_memory, 0, MEM_SZ);

	CELL dict_sz = MAX_WORDS * sizeof(ENTRY_T);
	the_dict = (ENTRY_T*)malloc(dict_sz);
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
