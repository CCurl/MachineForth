// ------------------------------------------------------------
// This is inpsired by these:
// http://www.ultratechnology.com/mfp21.htm
// http://www.ultratechnology.com/aha.htm
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
#define DSZ 64		// data stack size (circular)
#define RSZ 64		// return stack size (circular)
#define MAX_WORDS 2048

// ------------------------------------------------------------
// To add functionality:
// 1. Add an entry to the enum below
// 2. Create a function that implements the functionality.
// 3. Add an entry to the array of OPCODE_T records later in the file.
//    - NOTE: the value in the enum needs to be between NOP and BYE
// ------------------------------------------------------------

typedef struct {
	const char *asm_instr;
	const BYTE opcode;
} OPCODE_T;

enum {
	NOP = 0, A, FETCH, STORE, DROP, DUP, SETA, EMIT, INC, DEC,
	JMP, CALL, RET, ADD, SUB, MULT, DIV, AT_PLUS, STORE_PLUS, PLUS_STAR,
	OVER, UNTIL, UNTIL_NEG, INVERT, T_EQ_0, C_EQ_0, GOTORC, CLS,
	LIT, p_COLON, DTOR, RTOD, AND, XOR, TIMES2, DIVIDE2, BYE,
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
		  { "nop",     NOP,         }
		, { "a",       A,           }
		, { "@",       FETCH,       }
		, { "!",       STORE,       }
		, { "drop",    DROP,        }
		, { "dup",     DUP,         }
		, { "a!",      SETA,        }
		, { "jmp",     JMP,         }
		, { "call",    CALL,        }
		, { "emit",    EMIT,        }
		, { ";",       RET,         }
		, { "ret",     RET,         }
		, { "+",       ADD,         }
		, { "-",       SUB,         }
		, { "*",       MULT,        }
		, { "/",       DIV,         }
		, { "@+",      AT_PLUS,     }
		, { "!+",      STORE_PLUS,  }
		, { "+*",      PLUS_STAR,   }
		, { "over",    OVER,        }
		, { "until",   UNTIL,       }
		, { "-until",  UNTIL_NEG,   }
		, { "invert",  INVERT,      }
		, { "gotoRC",  GOTORC,      }
		, { "cls",     CLS,         }
		, { "T=0",     T_EQ_0,      }
		, { "C=0",     C_EQ_0,      }
		, { "(:)",     p_COLON,     }
		, { ">r",      DTOR,        }
		, { "r>",      RTOD,        }
		, { "and",     AND,         }
		, { "xor",     XOR,         }
		, { "2*",      TIMES2,      }
		, { "2/",      DIVIDE2,     }
		, { "1+",      INC,         }
		, { "1-",      DEC,         }
		, { "",        LIT,         }
		, { "bye",     BYE,         }
		, { NULL,      0,           }
};


// *********************************************************************
void run_program(CELL start)
{
	BYTE IR;
	CELL arg1, arg2, arg3;

	PC = start;
	call_depth = 1;

	while (1)
	{
		// printf("-PC=%08lx,%02x-", PC, BYTE_AT(PC));
		IR = BYTE_AT(PC++);
		switch (IR)
		{
		case NOP:
			break;

		case A:
			push(addr);
			break;

		case FETCH:
			arg1 = CELL_AT(TOS);
			TOS = arg1;
			break;

		case STORE:
			arg1 = pop();
			arg2 = pop();
			*(CELL *)arg1 = arg2;
			break;

		case DROP:
			arg1 = pop();
			break;

		case DUP:
			arg1 = TOS;
			push(arg1);
			break;

		case SETA:
			addr = pop();
			break;

		case EMIT:
			arg1 = pop();
			printf("%c", (arg1 & 0xFF));
			break;

		case INC:
			TOS++;
			break;

		case DEC:
			TOS--;
			break;

		case JMP:
			PC = CELL_AT(PC);
			break;

		case CALL:
			arg1 = CELL_AT(PC);
			PC += CELL_SZ;
			rpush(PC);
			PC = arg1;
			++call_depth;
			break;

		case RET:
			PC = rpop();
			if (--call_depth < 1)
				return;
			break;

		case ADD:
			arg1 = pop();
			TOS += arg1;
			break;

		case SUB:
			arg1 = pop();
			TOS -= arg1;
			break;

		case MULT:
			arg1 = pop();
			TOS *= arg1;
			break;

		case DIV:
			arg1 = pop();
			TOS /= arg1;
			break;

		case AT_PLUS:
			push(CELL_AT(addr++));
			++addr;
			break;

		case STORE_PLUS:
			arg1 = pop();
			CELL_AT(addr) = arg1;
			++addr;
			break;

		case PLUS_STAR:
			arg1 = pop();
			TOS += arg1;
			push(99999);
			break;

		case OVER:
			arg1 = pop();
			arg2 = TOS;
			push(arg1);
			push(arg2);
			break;

		case UNTIL:
			printf("-UNTIL-");
			break;

		case UNTIL_NEG:
			printf("-UNTIL_NEG-");
			break;

		case INVERT:
			printf("-INVERT-");
			break;

		case T_EQ_0:
			if (TOS != 0)
				PC = CELL_AT(PC);
			else
				PC += CELL_SZ;
			break;

		case C_EQ_0:
			if (TOS == 0)
				PC = CELL_AT(PC);
			else
				PC += CELL_SZ;
			break;

		case GOTORC:
		{
			COORD pos;
			arg1 = pop();
			arg2 = pop();
			pos.Y = (short)arg2;
			pos.X = (short)arg1;
			SetConsoleCursorPosition(hStdout, pos);
		}
			break;

		case CLS:
		{
			COORD pos = { 0, 0 };
			GetConsoleScreenBufferInfo(hStdout, &csbi);
			arg1 = csbi.dwSize.X * csbi.dwSize.Y;
			FillConsoleOutputCharacter(hStdout, ' ', arg1, pos, &arg2);
		}
			break;

		case LIT:
			arg1 = CELL_AT(PC);
			push(arg1);
			PC += CELL_SZ;
			break;

		case p_COLON:
			arg1 = pop();
			TOS += arg1;
			push(99999);
			break;

		case DTOR:
			rpush(pop());
			break;

		case RTOD:
			push(rpop());
			break;

		case AND:
			arg1 = pop();
			TOS &= arg1;
			break;

		case XOR:
			arg1 = pop();
			TOS ^= arg1;
			break;

		case TIMES2:
			TOS *= 2;
			break;

		case DIVIDE2:
			TOS /= 2;
			break;

		case BYE:
			return;

		default:
			printf("Unknown IR (%02x) at PC=%08lx.", IR, PC-1);
			return;
		}
	}
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
		tmp = pop();
		CELL_AT(tmp) = HERE;
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
			{
				PC = HERE + 10;
				CELL_AT(PC) = op.opcode;
				CELL_AT(PC+1) = RET;
				run_program(PC);
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
		printf("\n%02x, %-8s", op.opcode, op.asm_instr);
	}

	doTest();
	// return;

	fopen_s(&input_fp, MF_SRC, "rt");
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

	// printf(".got-here.");
	CELL_AT(the_memory + 1) = the_dict[num_words].xt;

	fclose(input_fp);
	input_fp = NULL;
}

// *********************************************************************
void write_output_file()
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
	printf("\n%s, %d bytes written.\n", MF_BIN, num);
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
