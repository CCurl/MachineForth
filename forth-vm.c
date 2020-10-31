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
CELL eax, ebx, src, dst;
int num_words = 0;

HANDLE hStdout, hStdin;
CONSOLE_SCREEN_BUFFER_INFO csbi;

// ---------------------------------------------------------------------
// The stacks are circular ... no underflow or overflow
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
// Stack operations
// ---------------------------------------------------------------------
void push(CELL val)
{
	if (++DSP > DSE) DSP = DSS;
	TOS = val;
}

CELL pop()
{
	CELL ret = TOS;
	if (--DSP < DSS) DSP = DSE;
	return ret;
}

// ---------------------------------------------------------------------
void rpush(CELL val)
{
	if ((++RSP) > RSE) RSP = RSS;
	*RSP = val;
}

CELL rpop()
{
	CELL ret = *(RSP--);
	if (RSP < RSS) RSP = RSE;
	return ret;
}

// ---------------------------------------------------------------------
// Initialization
// ---------------------------------------------------------------------
void init_vm()
{
	HERE = 0;
	LAST = 0;
	for (int i = 0; i < STK_SZ; i++) {
		dstk[i] = 0;
	}
}

// ---------------------------------------------------------------------
// Where all the fun is ...
// ---------------------------------------------------------------------
void run_program(CELL start)
{
	int call_depth = 1;
	CELL PC = (start == 0) ? (CELL)the_memory : start ;

	while (true)
	{
        BYTE IR = BYTE_AT(PC++);

		switch(IR)
		{
			case NOP:
				break;

			case LITERAL:
				eax = CELL_AT(PC);
				PC += CELL_SZ;
				push(eax);
				break;

			case CLITERAL:
				eax = BYTE_AT(PC);
				PC += 1;
				push(eax);
				break;

			case FETCH:
				TOS = CELL_AT(TOS);
				break;

			case STORE:
				eax = pop();
				CELL_AT(eax) = pop();
				break;

			case SWAP:
				eax = pop();
				ebx = pop();
				push(eax);
				push(ebx);
				break;

			case DROP:
				eax = pop();
				break;

			case DUP:
				eax = TOS;
				push(eax);
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
				eax = pop();
				TOS = TOS | eax;
				break;

			case AND:
				eax = pop();
				TOS = TOS & eax;
				break;

			case XOR:
				eax = pop();
				TOS = TOS ^ eax;
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
				eax = pop();
				ebx = pop();
				BYTE_AT(eax) = (BYTE)ebx;
				break;

			case ADD:
				eax = pop();
				TOS = TOS + eax;
				break;

			case SUB:
				eax = pop();
				TOS = TOS - eax;
				break;

			case MUL:
				eax = pop();
				TOS = TOS * eax;
				break;

			case DIV:
				eax = pop();
				TOS = TOS / eax;
				break;

			case LT:
				eax = pop();
				TOS = (TOS < eax) ? 0xFFFFFFFF : 0;
				break;

			case EQ:
				eax = pop();
				TOS = (TOS == eax) ? 0xFFFFFFFF : 0;
				break;

			case GT:
				eax = pop();
				TOS = (TOS > eax) ? 0xFFFFFFFF : 0;
				break;

			case EMIT:
				putchar((BYTE)pop());
				break;

			case OVER:
				eax = pop();
				ebx = TOS;
				push(eax);
				push(ebx);
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
				eax = pop();
				ebx = (CELL)gets((char *)(eax+1));
				BYTE_AT(eax) = StrLen((char *)eax+1);
				break;

			case SLASHMOD:
				eax = pop();
				ebx = pop();
				push(ebx%eax);
				push(ebx/eax);
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
				eax = pop();
				ebx = pop();
				CELL_AT(eax) += ebx;
				break;

			case INLINE:
				the_words[num_words].flags |= IS_INLINE;
				break;

			case IMMEDIATE:
				the_words[num_words].flags |= IS_IMMEDIATE;
				break;

			case DOT:
				eax = pop();
				if (BASE == 10)
					printf("%d", eax);
				else if (BASE == 0x10)
					printf("%x", eax);
				else
					printf("(%d in base %d)", eax, BASE);
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
				eax = pop();
				ebx = pop();
				pos.Y = (short)ebx;
				pos.X = (short)eax;
				SetConsoleCursorPosition(hStdout, pos);
			}
				break;

			// usage: ( -- ) - clears the screen, moces cursor to (0,0)
			case CLS:
			{
				COORD pos = { 0, 0 };
				GetConsoleScreenBufferInfo(hStdout, &csbi);
				eax = csbi.dwSize.X * csbi.dwSize.Y;
				FillConsoleOutputCharacter(hStdout, ' ', eax, pos, &ebx);
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
