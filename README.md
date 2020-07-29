# MachineForth
This is a compiler/vm for a bare-bones Forth VM.

It was inspired by Chuck Moore's "Machine Forth".  Please refer to this for more information:

http://www.ultratechnology.com/mfp21.htm

It has circular stacks, for both data and return.
It is very easy to add primitives and add any desired functionality.

It is completely contained in under 1000 lines of C in one file, 'mf.c'.
There is also a disassembler, in file 'mfd.c'.

This is a token-threaded implementation. I ran some comparisons between that and a direct-threaded 
implementation.  I was surprised to find that the byte-code threaded implementation ran faster.  
It was not much faster, over 500 million iterations, about .4 seconds for the following simple loop:

: bench 1000 dup * 500 * begin 1- while drop ;    \ This runs in about 1.2 seconds

This is probably because it uses a SWITCH loop, so the overhead for the call/ret insructions is avoided. 
Over 500 million iterations, that can be noticeable.

Building ...

Machine Forth can be built using either Visual Studio, or GCC. 

- For Visual Studio, there is a Solution file, mf.sln.

- For GCC, it can be built like this: gcc -g -Ofast -o mf mf.c
  Of course, in a Windows environment, using GCC depends on having it installed (see MinGW).
