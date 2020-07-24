// ------------------------------------------------------------
// inpsired by these:
// http://www.ultratechnology.com/mfp21.htm#source
// http://www.ultratechnology.com/aha.htm
// ------------------------------------------------------------

//#define _CRT_SECURE_NO_DEPRECATE
//#define _CRT_SECURE_NO_WARNINGS

#include <windows.h> 
#include <stdio.h>
#include <ctype.h>

HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

char input_fn[256];
char output_fn[256];
FILE* input_fp = NULL;
FILE* output_fp = NULL;

typedef unsigned long CELL;
typedef unsigned char BYTE;

CELL HERE, STATE = 0;
CELL BASE = 10;
#define CELL_SZ 4

// ------------------------------------------------------------
CELL PC;
CELL addr;
CELL tmp;
CELL MEM_SZ = (1024 * 1);
int call_depth = 0;

// Circular stacks - no over/under-flow!
// - the top of data stack is TOS
// - the top of return stack is TOSR

#define DSZ 64
CELL dstk[DSZ];
CELL* DSS = dstk;
CELL* DSE = &(dstk[DSZ - 1]);
CELL* DSP = dstk;

#define RSZ 64
CELL rstk[RSZ];
CELL* RSS = rstk;
CELL* RSE = &(rstk[RSZ - 1]);
CELL* RSP = rstk;

#define TOS  (*DSP)
#define TOSR (*RSP)

#define MAX_WORDS 2048
typedef struct {
	CELL xt;
	BYTE flags;
	char name[30];
} ENTRY_T;

BYTE* the_memory = NULL;
ENTRY_T* the_dict = NULL;
int num_words = 0;

void (*prims[64])();

int _QUIT_HIT;
int all_ok = 1;

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
void a()
{
	push(addr);
}

// ------------------------------------------------------------
void fetch()
{
	printf("\nfetch from %08lx, ", TOS);
	addr = TOS;
	TOS = *(CELL*)addr;
	printf("val is %08lx", TOS);
}

// ------------------------------------------------------------
void dup()
{
	tmp = TOS;
	push(tmp);
}

// ------------------------------------------------------------
void drop()
{
	tmp = pop();
}

// ------------------------------------------------------------
void store()
{
	addr = pop();
	*(CELL*)addr = pop();
}

// ------------------------------------------------------------
void seta()
{
	addr = pop();
}

// ------------------------------------------------------------
void jmp()
{
	PC = *(CELL*)PC;
}

// ------------------------------------------------------------
void call()
{
	CELL tmp = *(CELL*)PC;
	PC += CELL_SZ;
	rpush(PC);
	PC = tmp;
	++call_depth;
}

// ------------------------------------------------------------
void emit()
{
	printf("%c", pop());
}

// ------------------------------------------------------------
void ret()
{
	--call_depth;
	PC = rpop();
}

// ------------------------------------------------------------
void add()
{
	tmp = pop();
	TOS += tmp;
}

// ------------------------------------------------------------
void sub()
{
	tmp = pop();
	TOS -= tmp;
}

// ------------------------------------------------------------
void mult()
{
	tmp = pop();
	TOS *= tmp;
}

// ------------------------------------------------------------
void mdiv()
{
	tmp = pop();
	TOS /= tmp;
}

// ------------------------------------------------------------
void at_plus()
{
	push(*(CELL*)(addr++));
}

// ------------------------------------------------------------
void store_plus()
{
	*(CELL*)(addr++) = pop();
}

// ------------------------------------------------------------
void plus_star()
{
	// WHAT TO DO HERE
	return;
}

// ------------------------------------------------------------
void over()
{
	push(dstk[1]);
}

// ------------------------------------------------------------
void until()
{
	// WHAT TO DO HERE
}

void until_neg()
{
	// WHAT TO DO HERE
}

// ------------------------------------------------------------
void minus_until()
{
	// WHAT TO DO HERE
}

// ------------------------------------------------------------
void invert()
{
	// WHAT TO DO HERE
}

// ------------------------------------------------------------
void t_eq_0()
{
	if (TOS != 0)
		PC = *(CELL*)PC;
	else
		PC += CELL_SZ;
}

// ------------------------------------------------------------
void c_eq_0()
{
	if (TOS == 0)
		PC = *(CELL*)PC;
	else
		PC += CELL_SZ;
}

// ------------------------------------------------------------
void p_colon()
{
	// WHAT TO DO HERE
}

// ------------------------------------------------------------
void dtor()
{
	rpush(pop());
}

// ------------------------------------------------------------
void rtod()
{
	push(rpop());
}

// ------------------------------------------------------------
void mand()
{
	tmp = pop();
	TOS &= tmp;
}

// ------------------------------------------------------------
void mxor()
{
	tmp = pop();
	TOS ^= tmp;
}

// ------------------------------------------------------------
void times2()
{
	TOS = TOS << 1;
}

// ------------------------------------------------------------
void divide2()
{
	TOS = TOS >> 1;
}

// ------------------------------------------------------------
void cls()
{
	CELL dwConSize, sz;
	COORD pos = { 0, 0 };

	GetConsoleScreenBufferInfo(hStdout, &csbi);
	dwConSize = csbi.dwSize.X * csbi.dwSize.Y;
	FillConsoleOutputCharacter(hStdout, ' ', dwConSize, pos, &sz);
}

// ------------------------------------------------------------
void gotoRC()
{
	CELL col = pop();
	CELL row = pop();
	//    if (GetConsoleScreenBufferInfo(hStdout, &csbi))
	//	{
	COORD pos;
	pos.Y = (short)row;
	pos.X = (short)col;
	//csbi.dwCursorPosition.Y = row; 
	//csbi.dwCursorPosition.X = col; 
	SetConsoleCursorPosition(hStdout, pos);
	//s	}
}

// ------------------------------------------------------------
void nop()
{
}

// ------------------------------------------------------------
void bye()
{
	call_depth = 0;
}

// ------------------------------------------------------------
void inc()
{
	(*DSP)++;
}

// ------------------------------------------------------------
void dec()
{
	(*DSP)--;
}

// ------------------------------------------------------------
void lit()
{
	push(*(CELL*)PC);
	PC += CELL_SZ;
}

// ------------------------------------------------------------
typedef struct {
	const char* asm_instr;
	const BYTE opcode;
	void (*func)();
} OPCODE_T;

enum {
	NOP = 0, A, FETCH, STORE, DROP, DUP, SETA, EMIT, INC, DEC,
	JMP, CALL, RET, ADD, SUB, MULT, DIV, AT_PLUS, STORE_PLUS, PLUS_STAR,
	OVER, UNTIL, UNTIL_NEG, INVERT, T_EQ_0, C_EQ_0, GOTORC, CLS,
	LIT, p_COLON, DTOR, RTOD, AND, XOR, TIMES2, DIVIDE2, BYE,
} OPCODES;

OPCODE_T theOpcodes[] = {
		  { "nop",     NOP,         nop        }
		, { "a",       A,           a,         }
		, { "@",       FETCH,       fetch      }
		, { "!",       STORE,       store      }
		, { "drop",    DROP,        drop       }
		, { "dup",     DUP,         dup        }
		, { "a!",      SETA,        seta       }
		, { "jmp",     JMP,         jmp        }
		, { "call",    CALL,        call       }
		, { "emit",    EMIT,        emit       }
		, { ";",       RET,         ret        }
		, { "ret",     RET,         ret        }
		, { "+",       ADD,         add        }
		, { "-",       SUB,         sub        }
		, { "*",       MULT,        mult       }
		, { "/",       DIV,         mdiv       }
		, { "@+",      AT_PLUS,     at_plus    }
		, { "!+",      STORE_PLUS,  store_plus }
		, { "+*",      PLUS_STAR,   plus_star  }
		, { "over",    OVER,        over       }
		, { "until",   UNTIL,       until      }
		, { "-until",  UNTIL_NEG,   until_neg  }
		, { "invert",  INVERT,      invert     }
		, { "gotoRC",  GOTORC,      gotoRC     }
		, { "cls",     CLS,         cls        }
		, { "T=0",     T_EQ_0,      t_eq_0     }
		, { "C=0",     C_EQ_0,      c_eq_0     }
		, { "(:)",     p_COLON,     p_colon    }
		, { ">r",      DTOR,        dtor       }
		, { "r>",      RTOD,        rtod       }
		, { "and",     AND,         mand       }
		, { "xor",     XOR,         mxor       }
		, { "2*",      TIMES2,      times2     }
		, { "2/",      DIVIDE2,     divide2    }
		, { "1+",      INC,         inc        }
		, { "1-",      DEC,         dec        }
		, { "",        LIT,         lit        }
		, { "bye",     BYE,         bye        }
		, { NULL,      0,           NULL              }
};


/*
NB build this in somehow to enable usage of VT100 ECSAPE sequences to control the screen

	HANDLE hOut = GetStdHandle(STD_OUTPUT_HANDLE);
	DWORD dwMode = 0;
	GetConsoleMode(hOut, &dwMode);
	dwMode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
	SetConsoleMode(hOut, dwMode);
*/

// ------------------------------------------------------------
// ------------------------------------------------------------

// *********************************************************************
void run_word(CELL start)
{
	CELL IR, OLD_PC = PC;
	call_depth = 1;
	PC = start;

	while (1)
	{
		IR = *(BYTE*)(PC++);
		if (IR == CALL)
		{
			++call_depth;
		}
		if (IR == RET)
		{
			if (--call_depth < 1)
			{
				PC = OLD_PC;
				return;
			}
		}
		if ((IR >= NOP) && (IR <= BYE))
		{
			prims[IR]();
		}
		else
		{
			printf("-unknown opcode %d at 0x%08lx-", IR, PC);
			PC = OLD_PC;
			return;
		}
	}
}

// *********************************************************************
void run_program(CELL start)
{
	CELL IR;
	call_depth = 1;
	PC = start;

	while (1)
	{
		IR = *(BYTE*)(PC++);
		if ((IR >= NOP) && (IR <= BYE))
		{
			prims[IR]();
		}
		else
		{
			printf("-unknown opcode %02x at 0x%08lx-", IR, PC - 1);
			return;
		}

		if (call_depth < 1)
			return;
	}
}

// ------------------------------------------------------------
// ------------------------------------------------------------

void set_byte(CELL tgt, BYTE val)
{
	*(BYTE*)(tgt) = val;
}

void set_cell(CELL tgt, CELL val)
{
	*(CELL*)(tgt) = val;
}

void CComma(BYTE val)
{
	set_byte(HERE++, val);
}

void Comma(CELL val)
{
	push(val);
	push(HERE);
	store();
	HERE += CELL_SZ;
}

// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------
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

void dump_words()
{
	for (int i = num_words; i > 0; i--)
	{
		ENTRY_T* ep = (ENTRY_T*)&(the_dict[i]);
		printf("\n%4d, %08lx, %08lx, %02x, %s", i, (CELL)ep, ep->xt, ep->flags, ep->name);
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


char* parseword(char* line, char* word)
{
	if (word[0] == '\\')
	{
		*line = 0;
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
	if (_stricmp(word, "if") == 0)
	{
		CComma(T_EQ_0);
		push(HERE);
		Comma(0xFFFFFFFF);
		return line;
	}
	if (_stricmp(word, "then") == 0)
	{
		set_cell(pop(), HERE);
		return line;
	}
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
				CComma(op.opcode);
			else
				prims[op.opcode]();
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
			run_word(ep->xt);
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
	printf(" ??%s??", word);
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
	// push(5); dup(); gotoRC();
	push(' '); emit();
	push('O'); emit(); push('K'); emit();
	push('\n'); emit();
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
		prims[op.opcode] = op.func;
		printf("\n%02x, %-8s, %08lx", op.opcode, op.asm_instr, (CELL)op.func);
	}

	doTest();
	// return;

	fopen_s(&input_fp, input_fn, "rt");
	if (!input_fp)
	{
		printf("can't open input file!");
		exit(1);
	}

	char buf[256];
	while (fgets(buf, 256, input_fp) == buf)
	{
		parse(buf);
	}
	set_cell((CELL)&the_memory[1], the_dict[num_words].xt);

	fclose(input_fp);
	input_fp = NULL;
}

// *********************************************************************
void write_output_file()
{
	fopen_s(&output_fp, output_fn, "wb");
	if (!output_fp)
	{
		printf("ERROR: Can't open output file!");
		exit(1);
	}

	int num = fwrite(the_memory, 1, MEM_SZ, output_fp);
	fclose(output_fp);
	output_fp = NULL;
	printf("\n%s, %d bytes written.\n", output_fn, num);
}

int main(int argc, char** argv)
{
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

	strcpy_s(input_fn, sizeof(input_fn), "mf.src");
	strcpy_s(output_fn, sizeof(output_fn), "mf.bin");

	the_memory = (BYTE*)malloc(MEM_SZ);
	memset(the_memory, 0, MEM_SZ);

	CELL dict_sz = MAX_WORDS * sizeof(ENTRY_T);
	the_dict = (ENTRY_T*)malloc(dict_sz);
	memset(the_dict, 0, dict_sz);

	compile();
	write_output_file();
	dump_words();
	printf("\n");

	CELL st = GetTickCount();
	if (all_ok)
		run_program((CELL)the_memory);
	CELL ee = GetTickCount();
	CELL tt = ee - st;
	printf(" %d.%03d seconds\n", tt / 1000, tt % 1000);

	return 0;
}
