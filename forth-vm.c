#include <winbase.h>
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Shared.h"
#include "forth-vm.h"

// ------------------------------------------------------------------------------------------
// The VM
// ------------------------------------------------------------------------------------------
BYTE the_memory[MEM_SZ];
DICT_T the_words[MAX_WORDS];

CELL BASE = 10, STATE = 0;
CELL HERE, LAST;
CELL reg1, reg2, src, dst;
int num_words = 0;

HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

// ---------------------------------------------------------------------
// ---------------------------------------------------------------------
#define STK_SZ 32
CELL dstk[STK_SZ];
CELL *DSP = dstk;
CELL *DSS = &(dstk[0]);
CELL *DSE = &(dstk[STK_SZ-1]);

CELL rstk[STK_SZ];
CELL *RSP = rstk;
CELL *RSS = &(rstk[0]);
CELL *RSE = &(rstk[STK_SZ-1]);

// ---------------------------------------------------------------------
// ---------------------------------------------------------------------
void push(CELL val)
{
	if (++DSP > DSE)
		DSP = DSS;
	TOS = val;
}

CELL pop()
{
	CELL ret = TOS;
	if (--DSP < DSS)
		DSP = DSE;
	return ret;
}

// ---------------------------------------------------------------------
void rpush(CELL val)
{
	if ((++RSP) > RSE)
		RSP = RSS;
	*RSP = val;
}

CELL rpop()
{
	CELL ret = *(RSP--);
	if (RSP < RSS)
		RSP = RSE;
	return ret;
}

// ---------------------------------------------------------------------
// Where all the work is done
// ---------------------------------------------------------------------
void run_program(CELL start)
{
	int call_depth = 1;
	CELL PC = (start == 0) ? (CELL)the_memory : start ;

	// printf("Running (PC=%04lx) ... ", PC);
	while (true)
	{
        BYTE IR = BYTE_AT(PC++);
        // printf("(PC=%08lx, IR=%d)", PC-1, IR);

		switch(IR)
		{
			case NOP:
				break;

			case LITERAL:
				reg1 = CELL_AT(PC);
				PC += CELL_SZ;
				push(reg1);
				break;

			case CLITERAL:
				reg1 = BYTE_AT(PC);
				PC += 1;
				push(reg1);
				break;

			case FETCH:
				TOS = CELL_AT(TOS);
				break;

			case STORE:
				reg1 = pop();
				CELL_AT(reg1) = pop();
				break;

			case SWAP:
				reg1 = pop();
				reg2 = pop();
				push(reg1);
				push(reg2);
				break;

			case DROP:
				reg1 = pop();
				break;

			case DUP:
				reg1 = TOS;
				push(reg1);
				break;

			case SLITERAL:
				break;

			case JMP:
				PC = CELL_AT(PC);
				break;

			case JMPZ:
				if (TOS == 0)
					PC = CELL_AT(PC);
				else
					PC += CELL_SZ;
				break;

			case JMPNZ:
				if (TOS != 0)
					PC = CELL_AT(PC);
				else
					PC += CELL_SZ;
				break;

			case CALL:
				++call_depth;
				rpush(PC+4);
				PC = CELL_AT(PC);
				break;

			case RET:
				if ((--call_depth) < 1)
					return;
				PC = rpop();
				break;

			case OR:
				reg1 = pop();
				TOS = TOS | reg1;
				break;

			case AND:
				reg1 = pop();
				TOS = TOS & reg1;
				break;

			case XOR:
				reg1 = pop();
				TOS = TOS ^ reg1;
				break;

			case COM:
				TOS = ~TOS;
				break;

			case COMMA:
				comma(pop());
				break;

			case CCOMMA:
				ccomma(pop());
				break;

			case CFETCH:
				TOS = BYTE_AT(TOS);
				break;

			case CSTORE:
				reg1 = pop();
				reg2 = pop();
				BYTE_AT(reg1) = (BYTE)reg2;
				break;

			case ADD:
				reg1 = pop();
				TOS = TOS + reg1;
				break;

			case SUB:
				reg1 = pop();
				TOS = TOS - reg1;
				break;

			case MUL:
				reg1 = pop();
				TOS = TOS * reg1;
				break;

			case DIV:
				reg1 = pop();
				TOS = TOS / reg1;
				break;

			case LT:
				reg1 = pop();
				TOS = (TOS < reg1) ? 0xFFFFFFFF : 0;
				break;

			case EQ:
				reg1 = pop();
				TOS = (TOS == reg1) ? 0xFFFFFFFF : 0;
				break;

			case GT:
				reg1 = pop();
				TOS = (TOS > reg1) ? 0xFFFFFFFF : 0;
				break;

			case EMIT:
				putchar((BYTE)pop());
				break;

			case OVER:
				reg1 = pop();
				reg2 = TOS;
				push(reg1);
				push(reg2);
				break;

			case COMPARE:
				break;

			case DTOR:
				rpush(pop());
				break;

			case RTOD:
				push(rpop());
				break;

			case GETCH:
				break;

			case GETS:
				reg1 = pop();
				reg2 = (CELL)gets((char *)(reg1+1));
				BYTE_AT(reg1) = StrLen((char *)reg1+1);
				break;

			case COMPAREI:
				break;

			case SLASHMOD:
				reg1 = pop();
				reg2 = pop();
				push(reg2%reg1);
				push(reg2/reg1);
				break;

			case NOT:
				TOS = TOS ? 0 : -1 ;
				break;

			case RFETCH:
				push(*RSP);
				break;

			case INC:
				TOS += 1;
				break;

			case DEC:
				TOS -= 1;
				break;

			case GETTICK:
				push((CELL)GetTickCount());
				break;

			case SHIFTLEFT:
				TOS *= 2;
				break;

			case SHIFTRIGHT:
				TOS /= 2;
				break;

			case PLUSSTORE:
				reg1 = pop();
				reg2 = pop();
				CELL_AT(reg1) += reg2;
				break;

			case OPENBLOCK:
				reg1 = 0;
				// StrCpy(fn, "block-");
				// StrCat(fn, "");
				// StrCat(fn, ".txt");
				// fopen(fn, "rt");
				push(reg1);
				break;

			case CLOSEBLOCK:
				reg1 = pop();
				fclose((FILE *)reg1);
				break;

			case INLINE:
				the_words[num_words].flags |= IS_INLINE;
				break;

			case IMMEDIATE:
				the_words[num_words].flags |= IS_IMMEDIATE;
				break;

			case DOT:
				reg1 = pop();
				if (BASE == 10)
					printf("%d", reg1);
				else if (BASE == 0x10)
					printf("%x", reg1);
				else
					printf("(%d in base %d)", reg1, BASE);
				break;

			case HA:
				push((CELL)&HERE);
				break;

			case BA:
				push((CELL)&BASE);
				break;

			case SA:
				push((CELL)&STATE);
				break;

			case LA:
				push((CELL)&the_words[num_words]);
				break;

			case TOSRC:
				src = pop();
				break;

			case SRC:
				push(src);
				break;

			case TODST:
				dst = pop();
				break;

			case DST:
				push(dst);
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
				SetConsoleCursorPosition(hStdout, pos);
			}
				break;

			case BYE:
				return;

			default:
				printf("unknown instruction [%d] at [%08lx]", IR, PC);
				return;
		}
	}
}
