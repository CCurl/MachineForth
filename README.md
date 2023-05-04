# MF  - Inspired by Chuck Moore's "Machine Forth" and the MuP21 processor.

MF is a Machine-Forth like system based on the MuP21 opcodes, with some liberties taken.

MF is minimal to the extreme; it is implemented in one source file of about 250 lines of C code.

Some obvious differences between MachineForth and MF:
- Machine Forth uses 20-bit cells, MF uses 32-bit cells
- Machine Forth only supports cell addressing, MF supports both cell and byte addressing
- Machine Forth packs 4 5-bit instructions into one cell, in MF each instruction is 1 byte
- MF uses some of the unused MuP21 opcodes: 5, 6, 7, 8, 12, and 14

## MF Process Flow
The process flow in MF is very simple and minimal. "H" is the "here pointer", and "L" is the "last pointer".

The input source line is always compiled, and then executed if no words were defined.
- This is why some words are IMMEDIATE in MF, where they would not be in a "normal" Forth.
- In repl(), at the end of each line:
    - If "L" didn't change, reset "H" back to its initial value and execute what was compiled.
    - Othewise, "L" changed, meaning a word was created, so don't execute.

Here is the relevant code:
```
int parse(const char *cp) {
    in = (char*)cp;
    while (nextWord()) {
        if (isNum(wd)) { continue; }
        if (isWord(wd)) { continue; }
        if (isML(wd)) { continue; }
        printf("-%s?-\n",wd);
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

void repl(const char *cp) {
    byte *cH=H, *cL=L;
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
    parse("-ML- IMMEDIATE 8 116 7 1 -X-");
    repl("IMMEDIATE");
    parse("-ML- INLINE 8 117 7 1 -X- IMMEDIATE");
    while (st != 999) { repl(getInput()); }
    return 0;
}
```

## Bootstrapping MF
MF has a "Machine-Language" mode, implemented in isML(wd) function:
```
int isML(const char *cp) {
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

MF also defines exactly 2 words: IMMEDIATE and INLINE. 

These 2 words, along with "Machine Language" mode, can be used to define words:
```
-ML- ;      1  1 -X-  INLINE
-ML- !AC    5  1 -X-  INLINE
-ML- @AC    6  1 -X-  INLINE
-ML- SYS    7  1 -X-  INLINE

...

-ML- : 8 108 7 1 -X- IMMEDIATE

: EMIT   101 SYS ; INLINE

...

: bye (ST) >A 999 !A ;
```
## Building MF
### Windows:
- There is a Visual Studio solution file, mf.sln
- Visual Studio always interprets "long" as 32-bit
- For 32-bit (x86), the typedef for cell_t should be "long" or "int32_t"
- For 64-bit (x64), set the typedef for cell_t to "int64_t"
- NOTE: the 64-bit build generates warnings about format strings, but they are not a problem

### Linux:
- There is a simple ./make script
- It builds mf (32-bit) and mf64 (64-bit)
- It uses clang, but gcc should work too
- The typedef for cell_t can be left as "long"
- clang automatically interprets long as 64-bit when -m64 is specified
- clang automatically interprets long as 32-bit when -m32 is specified
- But if you want, you can be more explicit and use "int32_t" or "int64_t"

## MF Reference
From: http://www.ultratechnology.com/p21fchp9.html (chapter 9)
```
   CODE Name     Function
   ---- -------- ----------------------------
   00   JUMP     jump to 10 bit address in the lower 10 bits of the current word.
                     (MuP21: Must be the first or second instruction in a word)
   01   ;'       subroutine return. Pop the address from the top of the return stack
                     and jump to it.
   02   T=0      jump if T == 0
   03   T<>0     MuP21: jump if carry is set (MF: jump if T != 0)
   04   CALL     subroutine call. Push the address of the next location in memory to the 
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
   19   +*       add the second item on the data stack to the top item without 
                     removing the second item, if the least signifigant bit of T is 1
   20   XOR      remove the top two items from the data stack and replace them with the result
                     of logically exclusively-oring them together
   21   AND      remove the top two items from the data stack and replace them with the result
                     of logically and-ing them together
   22   U22      MuP21 unused (MF: unused)
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
   102  .D       print 1 number in base 10 (n--)
   103  .H       print 1 number in base 16 (n--)
   104  FOPEN    open file (nm md--fh)
   105  FCLOSE   close file (fh--)
   106  C,       standard Forth c, (b--)
   107  ,        standard Forth ,  (n--)
   108  CREATE   puts the next word into the dictionary (--)
   109  FIND     search for the next word in the dictionary (--dp|0)
   100  (H)      address of H (HERE) (--a)
   111  (L)      address of L (LAST) (--a)
   112  (ST)     address of ST (STATE) (--a)
   113  CELL     size of a CELL (--n)
   114  MEM      address of the beginning of MF's memory (--a)
   115  MEM-SZ   size in bytes of MF's memory (--n)
   116  IMM      mark the most recent WORD as IMMEDIATE (--)
   117  INL      mark the most recent WORD as INLINE (--)
```
