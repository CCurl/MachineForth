# MachineForth
This is a compiler/vm for a bare-bones Forth VM. NOTE: this is NOT related to, is any way, the Machine Forth of the great Chuck Moore.

NOTE: This is very old. A newer, and more useable version can be found here: https://github.com/CCurl/minForth

This was inspired by Chuck Moore's "Machine Forth".  Please refer to this for more information:

http://www.ultratechnology.com/mfp21.htm

It has circular stacks, for both data and return.
It is very easy to add primitives and add any desired functionality.

It is written in C in just a few files.
There is also a disassembler, in file 'mfd.c'.

This is a token-threaded implementation. I ran some comparisons between that and a direct-threaded implementation.  I was surprised to find that the byte-code threaded implementation ran faster. It was not much faster, over 500 million iterations, about .4 seconds for the following simple loop:

: bench 1000 dup * 500 * begin 1- while drop ;    \ This runs in about 1.4 seconds

This is probably because it uses a SWITCH loop, so the overhead for the call/ret insructions is avoided. Over 500 million iterations, that can be noticeable.

Building Machine Forth:

    Machine Forth can be built using either Visual Studio, or GCC. 

    - For Visual Studio, there is a Solution file, mf.sln.

    - For GCC, there is a batch file, make.bat
        'make mf' makes the mforth.exe
        'make mfd' makes the mforth disassembler

Running ...

  mforth -? shows usage information about mforth.
  
  mfd -? shows usage information about the mforth disassembler.

  To play with base mforth system, use 'mforth -b -t'. That builds a base system and drops into the REPL. The -t tells mforth to not save the state when you exit.

- mfd: reads the identified system and creates a disassembly in a *.dis file.
