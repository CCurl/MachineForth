#ifndef __FORTH_SHARED__
#define __FORTH_SHARED__

// #define __VERBOSE__ 1

#ifdef __VERBOSE__
	#define TRACE(...) printf(__VA_ARGS__)
#else
	#define TRACE(...)
#endif

#define MEM_SZ (1024*256)
#define MAX_WORDS 2000

// ************************************************************************************************
// The VM's instruction set
// ************************************************************************************************
enum {
	NOP = 0, LITERAL, CLITERAL, 
	FETCH, STORE, CFETCH, CSTORE, 
	SWAP, DROP, DUP,
	LT, EQ, GT, JMP, JMPZ, JMPNZ, CALL, RET,
	OVER, AND, OR, XOR, COM, ADD, SUB, MUL, DIV,
	DTOR, RTOD, HA, BA, SA, LA,
	SLASHMOD, NOT, RFETCH, INC, DEC, GETTICK, 
	SHIFTLEFT, SHIFTRIGHT, PLUSSTORE,
	CCOMMA, COMMA, IMMEDIATE, INLINE,
	TOSRC, SRC, TODST, DST,
	EMIT, GOTORC, CLS, GETS, GETCH, DOT, 
	BYE = 63
} OPCODES;

// ************************************************************************************************
typedef unsigned char BYTE;
typedef unsigned long CELL;				// Use long for a 32-bit implementation, short for a 16-bit
typedef int bool;

typedef struct {
	BYTE opcode;
	char *forth_prim;
} OPCODE_T;

// flags is a bit field:
#define IS_IMMEDIATE 0x01
#define IS_INLINE    0x02
#define IS_HIDDEN    0x04

typedef struct {
	CELL XT;
	BYTE flags;
	BYTE len;
	char name[30];
} DICT_T;

#undef NULL
#define NULL (0)
#define CELL_SZ (sizeof(CELL))

#define TOS (*DSP)

#define CELL_AT(addr) *(CELL *)(addr)
#define BYTE_AT(addr) *(BYTE *)(addr)

#define GETAT(loc) *(CELL *)(&the_memory[loc])
#define GETBYTEAT(loc) *(BYTE *)(&the_memory[loc])
#define SETAT(loc, val) *(CELL *)(&the_memory[loc]) = val

#define comma(val)  (*(CELL *)HERE = (CELL)val); HERE += 4
#define ccomma(val) (*(BYTE *)HERE = (BYTE)val); HERE += 1

#define true 1
#define false 0

#endif
