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
#include <string.h>
#include "Shared.h"

typedef unsigned long CELL;
typedef unsigned char BYTE;

// ------------------------------------------------------------
BYTE the_memory[MEM_SZ];
DICT_T the_words[MAX_WORDS];

char base_fn[64];
HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;
int num_words = 0;

FILE *input_fp = NULL;
FILE *output_fp = NULL;

CELL HERE, STATE = 0;
CELL BASE = 10;
CELL STOP_HERE = 0;

// ---------------------------------------------------------------------
void StrCpy(char *dst, char *src) 
{
	while (*src)
	{
		*(dst++) = *(src++);
	}
	*dst = (char)0;
}

// ---------------------------------------------------------------------
void StrCat(char *dst, char *src) 
{
	while (*dst)
		dst++;
	StrCpy(dst, src);
}

size_t StrLen(char *cp)
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

OPCODE_T opcodes[] = {
          { NOP,           "nop",           }
        , { LITERAL,       "LITERAL",       }
        , { CLITERAL,      "CLITERAL",      }
        , { FETCH,         "@",             }
        , { STORE,         "!",             }
        , { CFETCH,        "c@",            }
        , { CSTORE,        "c!",            }
        , { SWAP,          "SWAP",          }
        , { DROP,          "DROP",          }
        , { DUP,           "DUP",           }
        , { SLITERAL,      "SLITERAL",      }
        , { EMIT,          "emit",          }
        , { JMP,           "JMP",           }
        , { JMPZ,          "JMPZ",          }
        , { JMPNZ,         "JMPNZ",         }
        , { CALL,          "CALL",          }
        , { RET,           "RET",           }
        , { OR,            "OR",            }
        , { XOR,           "XOR",           }
        , { COM,           "COM",           }
        , { ADD,           "+",             }
        , { SUB,           "-",             }
        , { MUL,           "*",             }
        , { DIV,           "/",             }
        , { LT,            "<",             }
        , { EQ,            "=",             }
        , { GT,            ">",             }
        , { OVER,          "over",          }
        , { COMPARE,       "COMPARE",       }
        , { DTOR,          ">r",            }
        , { RTOD,          "r>",            }
        , { AND,           "AND",           }
        , { GETCH,         "GETCH",         }
        , { COMPAREI,      "COMPAREI",      }
        , { SLASHMOD,      "/mod",          }
        , { NOT,           "NOT",           }
        , { RFETCH,        "RFETCH",        }
        , { INC,           "1+",            }
        , { DEC,           "1-",            }
        , { GETTICK,       "GETTICK",       }
        , { SHIFTLEFT,     "2*",            }
        , { SHIFTRIGHT,    "2/",            }
        , { PLUSSTORE,     "+!",            }
        , { OPENBLOCK,     "open-block",    }
        , { CLOSEBLOCK,    "close-block",   }
        , { DOT,           "(.)",           }
        , { HA,            "(h)",           }
        , { BA,            "base",          }
        , { SA,            "state",         }
        , { LA,            "last",          }
        , { COMMA,         ",",             }
        , { CCOMMA,        "c,",            }
        , { IMMEDIATE,     "immediate",     }
        , { INLINE,        "inline",        }
        , { TOSRC,         ">src",          }
        , { SRC,           "src",           }
        , { TODST,         ">dst",          }
        , { DST,           "dst",           }
        , { GOTORC,        "gotorc",        }
        , { CLS,           "cls",           }
        , { GETS,          "gets",          }
        , { BYE,           "BYE",           }
		, { 0,             0,               }
};


// ------------------------------------------------------------
// ------------------------------------------------------------
// ------------------------------------------------------------

OPCODE_T *rfind_opcode(BYTE IR)
{
	for (int i = 0; ; i++)
	{
		OPCODE_T *op = &opcodes[i];
		if (op->forth_prim == NULL)
		{
			return NULL;
		}
		if (op->opcode == IR)
		{
			return op;
		}
	}
}

// ---------------------------------------------------------------------
DICT_T *rfind_word(CELL xt)
{
	for (int i = num_words; i > 0; i--)
	{
		DICT_T *e = (&the_words[i]);
		if (e->XT == xt) return e;
	}
	return NULL;
}

#define lsz  48
#define rsz 128
#define osz  64

// ------------------------------------------------------------
void do_dis(FILE *fp)
{
	char left[lsz], right[rsz], other[osz];
	BYTE IR;
	CELL PC, xt, mem_start;

	PC = 0;
	mem_start = GETAT(6);
	STOP_HERE = (HERE - mem_start - 1);
	// int call_depth = 1;

	while (1)
	{
		if (PC > STOP_HERE)
			return;

		IR = GETAT(PC);
		xt = GETAT(PC);
 
		OPCODE_T *op = rfind_opcode(IR);
		DICT_T *ep = rfind_word(xt);

		right[0] = (char)0;
		snprintf(left, lsz, "%08lx: %02x", PC+mem_start, IR);
		++PC;

		if (op)
		{
			snprintf(right, rsz, "%s", op->forth_prim);
		}

		// printf("-PC=%08lx,%02x-", PC, BYTE_AT(PC));
		switch (IR)
		{
			case NOP:
			case TOSRC:
			case SRC:
			case TODST:
			case DST:
			case FETCH:
			case STORE:
			case CFETCH:
			case CSTORE:
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
			case LA:
			case LT:
			case EQ:
			case GT:
			case RET:
			case ADD:
			case SUB:
			case MUL:
			case DIV:
			case PLUSSTORE:
			case DTOR:
			case RTOD:
			case AND:
			case XOR:
			case COM:
			case DOT:
			case SLASHMOD:
			case SHIFTLEFT:
			case SHIFTRIGHT:
			case GETTICK:
			case BYE:
				break;


			case CLITERAL:
				snprintf(other, osz, " %08lx", GETBYTEAT(PC));
				StrCat(left, other);
				StrCat(right, other);
				PC += 1;
				break;

			// usage: ( -- n ) - push n onto the stack
			case LITERAL:
				snprintf(other, osz, " %08lx", GETAT(PC));
				StrCat(left, other);
				StrCat(right, other);
				PC += CELL_SZ;
				break;

			case CALL:
				xt = GETAT(PC);
				snprintf(other, osz, " %08lx", xt);
				StrCat(left, other);
				StrCat(right, other);
				ep = rfind_word(xt);
				if (ep)
				{
					snprintf(other, osz, " (%s)", ep->name);
					StrCat(right, other);
				}
				PC += CELL_SZ;
				break;

			// usage: ( -- ) - return from subroutine
			case JMP:
				xt = GETAT(PC);
				snprintf(other, osz, " %08lx", xt);
				StrCat(left, other);
				StrCat(right, other);
				ep = rfind_word(xt);
				if (ep)
				{
					snprintf(other, osz, " (%s)", ep->name);
					StrCat(right, other);
				}
				PC += CELL_SZ;
				break;

			// usage: ( n -- n ) - if TOS=0, jump
			case JMPZ:
				snprintf(other, osz, " %08lx", GETAT(PC));
				StrCat(left, other);
				StrCat(right, other);
				PC += CELL_SZ;
				break;

			// usage: ( n -- n ) - if TOS!=0, jump
			case JMPNZ:
				snprintf(other, osz, " %08lx", GETAT(PC));
				StrCat(left, other);
				StrCat(right, other);
				PC += CELL_SZ;
				break;

			default:
				printf("Unknown IR (%d) at PC=%08lx.", IR, PC - 1);
				return;
		}

		// printf("%-24s ; %s\n", left, right);
		fprintf(fp, "%-24s ; %s\n", left, right);
	}
}

// ------------------------------------------------------------
void dis_words(FILE *fp)
{
	fprintf(fp, "; Words:\n");
	fprintf(fp, ";   XT     Flags  Name\n");
	fprintf(fp, ";------------------------------------------\n");

	for (int i = num_words; i > 0; i--)
	{
		DICT_T* ep = (DICT_T*)&(the_words[i]);
		fprintf(fp, "; %08lx  %02x   %s\n", ep->XT, ep->flags, ep->name);
	}
	fprintf(fp, "\n");
}

// ------------------------------------------------------------
void dis_prims(FILE *fp)
{
	fprintf(output_fp, "; Opcodes:\n; -----------------------------\n");
	for (int i = 0; ; i++)
	{
		OPCODE_T op = opcodes[i];
		if (op.forth_prim == NULL)
			break;
		fprintf(output_fp, "; %02x, (%02d), %s\n", op.opcode, op.opcode, op.forth_prim);
	}
	fprintf(fp, "\n");
}

// ---------------------------------------------------------------------
bool open_file(char *ext, char *mode, FILE **pfp)
{
	char fn[64];
	StrCpy(fn, base_fn);
	StrCat(fn, ext);
	FILE *fp = fopen(fn, mode);
	if (!fp)
	{
		printf("\nUnable to open '%s'", fn);
		*pfp = NULL;
		return false;
	}
	*pfp = fp;
	return true;
}

// ---------------------------------------------------------------------
bool read_binaries() 
{
	FILE *fp = NULL;
	if (!open_file(".BIN", "rb", &fp)) return false;
	fread(the_memory, MEM_SZ, 1, fp);
	fclose(fp);

	if (!open_file(".INF", "rb", &fp)) return false;
	fread(&HERE, sizeof(CELL), 1, fp);
	fread(&num_words, sizeof(num_words), 1, fp);
	int num = fread(the_words, sizeof(DICT_T), MAX_WORDS, fp);
	fclose(fp);

	return true;
}

// ---------------------------------------------------------------------
void parse_arg(char *arg) 
{
	// -f:baseFn
	if (*arg == 'f') StrCpy(base_fn, arg+2);
	if (*arg == '?')
	{
		printf("usage: mfd [options]\n");
		printf("\t-f:baseFn (default: 'mforth')\n");
	}
}

// ------------------------------------------------------------
int main(int argc, char** argv)
{
	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);

	StrCpy(base_fn, "mforth");

    for (int i = 1; i < argc; i++)
    {
        char *cp = argv[i];
        if (*cp == '-') parse_arg(++cp);
    }

	read_binaries();

	STOP_HERE = HERE;

	if (!open_file(".DIS", "wt", &output_fp)) return 0;
	dis_prims(output_fp);
	dis_words(output_fp);
	do_dis(output_fp);
	fclose(output_fp);

	return 0;
}
