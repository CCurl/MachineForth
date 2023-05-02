MF is a system based on my understanding of Chuck Moore's 'Machine Forth'.

MF is based on the MuP21 (Machine Forth VM) opcodes, with some liberties taken.

Obvious differences:
- Machine Forth uses 20-bit cells, MF uses 32-bit cells
- Machine Forth only supports word addressing, MF supports both word and byte addressing
- Machine Forth packs 4 5-bit instructions into one word, in MF each instruction is 1 byte
- MF uses unused MuP21 opcpdes 5, 6, 7, 8, 12, and 14.

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
