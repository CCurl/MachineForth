# MF  - Inspired by Chuck Moore's "Machine Forth" and the MuP21 processor.

MF is a Machine-Forth like system based on the MuP21 opcodes, with some liberties taken.

Obvious differences:
- Machine Forth uses 20-bit cells, MF uses 32-bit cells
- Machine Forth only supports word addressing, MF supports both word and byte addressing
- Machine Forth packs 4 5-bit instructions into one word, in MF each instruction is 1 byte
- MF uses unused MuP21 opcpdes 5, 6, 7, 8, 12, and 14.

## MF workflow
The MF workflow in MF is very simple and minimal:
```
int parse(const char *cp) {
    in = (char*)cp;
    while (nextWord()) {
        //printf("-re:%s-",wd);
        if (isML(wd)) { continue; }
        if (isNum(wd)) { continue; }
        if (isWord(wd)) { continue; }
        printf("-%s?-",wd);
        return 0;
    }
    return 1;
}

char *getInput() {
    FILE *fp = input_fp ? (FILE*)input_fp : stdin;
    if (fp == stdin) { printf(" ok\n"); }
    if (tib != fgets(tib, sizeof(tib), fp)) {
        fclose(fp);
        input_fp=0;
        tib[0]=0;
    }
    return tib;
}

void repl(char *cp) {
    byte *cH=H, *cL=L;
    if (cp == 0) { cp = getInput(); }
    if (parse(cp) == 0) { H=cH; return; }
    if (cL == L) { CComma(RET); H=cH; run(H); }
}

int main(int argc, char **argv) {
    sp = rsp = input_fp = 0;
    H = &MEMB(0);
    L = &MEMB(MEM_SZ);
    if (2 <= argc) {
        input_fp = (long)fopen(argv[1],"rb");
        if (input_fp) { printf("Cannot open: %s\n", argv[1]); }
    }
    if (!input_fp) { input_fp = (long)fopen("mf.f","rb"); }
    while (st != 999) { repl(0); }
    return 0;
}
```

## Bootstrapping MF
Bootstrapping MF uses the "Machine Language" mode, implemented in isML(wd) function:
```
int isML(char *cp) {
    if (!strEq(cp, "-ML-")) { return 0; }
    create(0);
    while (nextWord()) {
        if (strEq(wd,"-X-")) { break; }
        if (parseNum(wd)) { CComma(pop()); }
        else { printf("-ml:%s?-", wd); }
    }
    return 1;
}
```

That can be used to define words:
```
-ML- immediate 8 111 7  14  8 113 7  17 23 29  8 2  5 1 -X-
immediate
-ML- inline    8 111 7  14  8 113 7  17 23 29  8 4  5 1 -X- immediate

-ML- ;      1  1 -X- inline
-ML- !AC    5  1 -X- inline
-ML- @AC    6  1 -X- inline
-ML- SYS    7  1 -X- inline
-ML- LIT1   8  1 -X- inline
-ML- @A+    9  1 -X- inline
-ML- @A    11  1 -X- inline
-ML- !     12  1 -X- inline
-ML- !A+   13  1 -X- inline
-ML- @     14  1 -X- inline
-ML- !A    15  1 -X- inline
-ML- COM   16  1 -X- inline
-ML- 2*    17  1 -X- inline
-ML- 2/    18  1 -X- inline
-ML- +*    19  1 -X- inline
-ML- XOR   20  1 -X- inline
-ML- AND   21  1 -X- inline
-ML- +     23  1 -X- inline
-ML- R>    24  1 -X- inline
-ML- A     25  1 -X- inline
-ML- AND   25  1 -X- inline
-ML- DUP   26  1 -X- inline
-ML- OVER  27  1 -X- inline
-ML- >R    28  1 -X- inline
-ML- >A    29  1 -X- inline
-ML- DROP  31  1 -X- inline

-ML- : 8 108 7 1 -X- immediate

: emit   101 SYS ; inline
: .      102 SYS ; inline
: .h     103 SYS ; inline
: fopen  104 SYS ; inline
: fclose 105 SYS ; inline
: C,     106 SYS ; inline
: ,      107 SYS ; inline
: create 108 SYS ; inline
: find   109 SYS ; inline
: (H)    110 SYS ; inline
: (L)    111 SYS ; inline
: state  112 SYS ; inline
: CELL   113 SYS ; inline

: space   32 emit ; inline
: bye state >A 999 !A ;

123 DUP .h space . space 65 emit
```
## MF Reference
From: http://www.ultratechnology.com/p21fchp9.html (chapter 9)
```
   CODE Name     Function
   ---- -------- ----------------------------
   00   JUMP     Jump to 10 bit address in the lower 10 bits of the current word.
                     (MuP21: Must be the first or second instruction in a word)
   01   ;'       Subroutine return. Pop the address from the top of the return stack
                     and jump to it.
   02   T=0      Jump if T=0
   03   C=0      Jump if carry is reset
   04   CALL     Subroutine call. Push the address of the next location in memory to the 
                     return stack, and jump to the 10 bit address in the lower 10 bits of 
                     the current word.
   05   !AC      MuP21 unused (MF: used for !AC)
   06   @AC      MuP21 unused (MF: used for @AC)
   07   SYS      MuP21 unused (MF: used for SysOP)
   08   LIT1     MuP21 unused (MF: used for LIT1)
   09   @A+      fetch a value from memory pointed to by the A register, place it on the top of
                    the data stack, and increment A
   10   LIT      fetch the next cell from memory as a literal and place it on the top of the
                     data stack
   11   @A       fetch a value from memory pointed to by the A register, place it on the top of
                    the data stack, and increment A 
   12   !        MuP21 unused (MF: used for !)
   13   !A+      remove the item in the top of data stack and store it into memory pointed 
                     to by the A register, increment A
   14   @        MuP21 unused (MF: used for @)
   15   !A       remove the item in the top of data stack and store it into 
                     memory pointed to by the A register
   16   COM      complement all bits in T (top of data stack)
   17   2*       shift T left 1 bit (the bottom bit becomes 0)
   18   2/       shift T right 1 bit (the top bit remains unchanged)
   19   +*       Add the second item on the data stack to the top item without 
                     removing the second item, if the least signifigant bit of T is 1
   20   XOR      remove the top two items from the data stack and replace them with the result
                     of logically exclusively-oring them together
   21   AND      remove the top two items from the data stack and replace them with the result
                     of logically and-ing them together
   22            MuP21 unused
   23   +        remove the top two items from the data stack and replace them with the result
                     of adding them together
   24   POP      move one item from the return stack to the data stack
   25   A        copy the contents of the A register to the top of stack
   26   DUP      copy the top of stack to the top of stack
   27   OVER     copy the second item on the data stack and make it the new top of the data stack
   28   PUSH     move one item from the data stack to the return stack
   29   >A       move the top of stack to the A register
   30   NOP      null operation (delay 10ns)
   31   DROP     discard the item on the top of the data stack
```

System operations
```
   CODE Name     Function
   ---- -------- ----------------------------
   101  EMIT     output 1 character (n--)
   102  .        print 1 number in base 10
   103  .h       print 1 number in base 16
   104  fopen    open file (nm md-fh)
   105  fclose   close file (fh--)
   106  C,       standard Forth c, (b--)
   107  ,        standard Forth ,  (n--)
   108  create   puts the next word into the dictionary (--)
   109  find     search for the next word in the dictionary (--dp)
   100  (H)      address of H (HERE) (--a)
   111  (L)      address of L (LAST) (--a)
   112  state    address of ST (STATE) (--a)
   113  CELL     size of a CELL (--n)
```
