#include <winbase.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Shared.h"
#include "forth-vm.h"

char base_fn[32];
bool run_saved = true;
bool is_temp = false;
bool auto_run = false;

#define BUF_SZ 1024
char input_buf[BUF_SZ];
FILE *input_fp = NULL;

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

// ---------------------------------------------------------------------
int StrLen(char *src) 
{
	int i = 0;
	while (*src)
	{
		src++;
		i++;
	}
	return i;
}

// ---------------------------------------------------------------------
char *get_word(char *stream, char *word)
{
	*word = (char)0;

	// skip any leading WS
	while (*stream < (char)33)
	{
		// NULL means end of stream
		if (*stream == (char)0)
			return (char *)0;
		++stream;
	}

	while (*stream > (char)32)
	{
		*(word++) = *(stream++);
	}
	*word = (char)0;

	return stream;
}

// ---------------------------------------------------------------------
DICT_T *define_word(char *word)
{
	DICT_T *e = (&the_words[++num_words]);
	e->flags = 0;
	e->XT = HERE;
	e->len = StrLen(word);
	StrCpy(e->name, word);
	return e;
}

// ---------------------------------------------------------------------
DICT_T *rfind_word(CELL xt)
{
	for (int i = num_words; i > 0; i--)
	{
		DICT_T *e = (&the_words[i]);
		if (e->XT == xt)
			return e;
	}
	return NULL;
}

// ---------------------------------------------------------------------
DICT_T *find_word(char *name)
{
	for (int i = num_words; i > 0; i--)
	{
		DICT_T *e = (&the_words[i]);
		if (strcmpi(e->name, name) == 0)
			return e;
	}
	return NULL;
}

// ---------------------------------------------------------------------
OPCODE_T *find_opcode(char *name)
{
	for (int i = 0;; i++)
	{
		OPCODE_T *e = (&opcodes[i]);
		if (e->forth_prim == NULL)
			return NULL;
		if (strcmpi(e->forth_prim, name) == 0)
			return e;
	}
	return NULL;
}

// ---------------------------------------------------------------------
bool is_number(char *word, CELL *num)
{
	int base = BASE;
	bool is_neg = false;
	CELL my_num = 0;

	if ((word[0] == '\'')&& (word[2] == '\'')&& (word[3] == (char)0))
	{
		*num = word[1];
		return true;
	}

	if (*word == '%') { base =  2; word++; }
	if (*word == '#') { base = 10; word++; }
	if (*word == '$') { base = 16; word++; }

	if ((*word == '-') && (base == 10))
	{
		++word;
		is_neg = true;
	}

	*num = 0;
	while (*word)
	{
		char c = (*word++);
		int i = c - '0';
		if ((i >= 0) && (i < base))
		{
			my_num = ((my_num) * base) + i;
			continue;
		}
		if (base > 10)
		{
			c = ((c >= 'a') && (c <= 'z')) ? c - 32 : c;
			i = c - 'A';
			if ((i >= 0) && (i < (base-10)))
			{
				my_num = ((my_num) * base) + (i + 10);
				continue;
			}
		}
		return false;
	}

	*num = is_neg ? -my_num : my_num;
	return true;
}

// ---------------------------------------------------------------------
char *parse_word(char *word, char *stream)
{
	if ((*word == '\\') && (*(word+1) == 0))
	{
		while (*stream > (char)31)
			++stream;
		return stream;
	}

	if ((*word == '(') && (*(word+1) == 0))
	{
		while (*stream != ')')
			++stream;
		return ++stream;
	}

	if ((*word == ':') && (*(word+1) == 0))
	{
		stream = get_word(stream, word);
		define_word(word);
		STATE = 1;
		return stream;
	}

	if ((*word == ';') && (*(word+1) == 0))
	{
		// Simple tail-call optimization
		if ((BYTE_AT(HERE-5) == CALL) && rfind_word(CELL_AT(HERE-4)))
			BYTE_AT(HERE-5) = JMP;
		else
			ccomma(RET);
		
		STATE = 0;
		return stream;
	}

	if (strcmpi(word, "dw") == 0)
	{
		stream = get_word(stream, word);
		define_word(word);
		return stream;
	}

	if (strcmpi(word, "forget") == 0)
	{
		HERE = the_words[num_words].XT;
		num_words--;
		return stream;
	}

	DICT_T *ep = find_word(word);
	if (ep)
	{
		if ((STATE == 0) || (ep->flags & IS_IMMEDIATE))
		{
			run_program(ep->XT);
		}
		else
		{
			ccomma(CALL);
			comma(ep->XT);
		}
		
		return stream;
	}

	OPCODE_T *op = find_opcode(word);
	if (op)
	{
		if (STATE == 0)
		{
			BYTE_AT(HERE + 0x0100) = op->opcode;
			BYTE_AT(HERE + 0x0101) = RET;
			run_program(HERE + 0x0100);
		}
		else
		{
			ccomma(op->opcode);
		}
		
		return stream;
	}

	CELL the_num;
	if (is_number(word, &the_num))
	{
		push(the_num);
		if (STATE == 1)
		{
			if ((0 <= the_num) && (the_num < 0x0100))
			{
				ccomma(CLITERAL);
				ccomma(pop());
			}
			else
			{
				ccomma(LITERAL);
				comma(pop());
			}
		}
		return stream;
	}

	printf(" %s ??", word);
	*stream = (char)0;
	return stream;
}

// ---------------------------------------------------------------------
void execute(char *stream)
{
	char word[64];
	while (true)
	{
		stream = get_word(stream, word);
		if (stream == NULL)
		{
			break;
		}
		stream = parse_word(word, stream);
	}

	the_memory[0] = JMP;
	SETAT(1, the_words[num_words].XT);
}

bool open_file(char *ext, char *mode, FILE **pfp)
{
	char fn[64];
	StrCpy(fn, base_fn);
	StrCat(fn, ext);
	*pfp = NULL;
	FILE *fp = fopen(fn, mode);
	if (!fp)
	{
		printf("\nUnable to open '%s'", fn);
		return false;
	}
	*pfp = fp;
	return true;
}

// ---------------------------------------------------------------------
bool read_binaries() 
{
	FILE *fp = NULL;
	if (!open_file(".bin", "rb", &fp)) return false;
	fread(the_memory, MEM_SZ, 1, fp);
	fclose(fp);

	if (!open_file(".inf", "rb", &fp)) return false;
	fread(&HERE, sizeof(CELL), 1, fp);
	fread(&num_words, sizeof(num_words), 1, fp);
	int num = fread(the_words, sizeof(DICT_T), MAX_WORDS, fp);
	fclose(fp);

	return true;
}

// ---------------------------------------------------------------------
void write_output() 
{
	char fn[64];
	FILE *fp;

	CELL sz = 0, end = (CELL)&(the_memory[0]);
	while ((end + sz) < (HERE + 0x0200) ) sz += 0x1000;

	if (!open_file(".bin", "wb", &fp)) return;

	fwrite(the_memory, 1, sz, fp);
	fclose(fp);

	if (!open_file(".txt", "wt", &fp)) return;

	fprintf(fp, "HERE: 0x%08lx, the_memory: 0x%08lx, bytes: %d\n", 
		HERE, the_memory, HERE - (CELL)the_memory);

	fprintf(fp, "\n%d Words:\n-------------------------------\n", num_words);
	for (int i = num_words; i > 0; i--)
	{
		DICT_T *e = &the_words[i];
		fprintf(fp, "%4d: %02x %08lx %d %s\n", i, e->flags, e->XT, e->len, e->name);
	}

	fprintf(fp, "\nOpcodes:\n---------------------------\n");
	for (int i = 0; ; i++)
	{
		OPCODE_T *op = &opcodes[i];
		if (op->forth_prim == NULL)
			break;
		fprintf(fp, "#%02d ($%02x): %s\n", op->opcode, op->opcode, op->forth_prim);
	}

	fclose(fp);
	if (!open_file(".inf", "wb", &fp)) return;
	fwrite(&HERE, sizeof(CELL), 1, fp);
	fwrite(&num_words, sizeof(num_words), 1, fp);
	fwrite(the_words, sizeof(DICT_T), num_words+4, fp);
	fclose(fp);
}

// ---------------------------------------------------------------------
bool read()
{
	if (input_fp)
	{
		if (fgets(input_buf, BUF_SZ, input_fp) == input_buf)  return false;
		fclose(input_fp);
		input_fp = NULL;
		StrCpy(input_buf, "");
		return true;
	}
	gets(input_buf);
	return false;
}

// ---------------------------------------------------------------------
void REPL()
{
	while (true)
	{
		if (!input_fp) printf(" ok\n");
		read();
		if (strcmpi(input_buf, "bye") == 0) return;
		execute(input_buf);
	}
}

// ---------------------------------------------------------------------
void parse_arg(char *arg) 
{
	// -f:baseFn
	if (*arg == 'f') StrCpy(base_fn, arg+2);

	// -b (bootstrap)
	if (*arg == 'b') run_saved = false;

	// -t (is-temp)
	if (*arg == 't') is_temp = true;

	// -a (auto-run)
	if (*arg == 'a') auto_run = true;

	if (*arg == '?')
	{
		printf("usage: mforth [options]\n");
		printf("\t-f:baseFn (default: 'mforth')\n");
		printf("\t-b        (bootstrap, default: false)\n");
		printf("\t-t        (is-temp,   default: false\n");
		printf("\t-a        (auto-run,  default: false)\n");
		exit(0);
	}
}

// ---------------------------------------------------------------------
int main (int argc, char **argv)
{
	char fn[64];
	FILE *fp;

	hStdin = GetStdHandle(STD_INPUT_HANDLE);
	hStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	StrCpy(base_fn, "mforth");
	HERE = (CELL)the_memory;
	BASE = 10;

    for (int i = 1; i < argc; i++)
    {
        char *cp = argv[i];
        if (*cp == '-') parse_arg(++cp);
    }

	// run existing bin file?
	if (run_saved)
	{
		if (!read_binaries()) return 1;
		if (auto_run) 
		{
			run_program(0);
			return 0;
		}
	}
	else
	{
		ccomma(BYE);
		comma(0);
		if (!open_file(".src", "rt", &input_fp)) return 1;
	}

	REPL();

	if (!is_temp)
	{
		BYTE_AT((CELL)&the_memory[0]) = JMP;
		CELL_AT((CELL)&the_memory[1]) = the_words[num_words].XT;
		write_output();
	}

    return 0;
}
