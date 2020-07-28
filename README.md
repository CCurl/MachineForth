# MachineForth
This is a compiler/vm for a simple forth on Windows.

It was inspired by Chuck Moore's "Machine Forth". It is completely contained in one file, mf.c

It has circular stacks, both data and return.

It is exceedingly easy to add primitives and add any desired functionality.

Please refer to this for more information:

http://www.ultratechnology.com/mfp21.htm

It can be built using either Visual Studio 19, or GCC. 
To build it using GCC, use 'make mf'. This depends on having MinGW installed.

- The VS19 version is 17k.
- The GCC version is 92k.
- The GCC version is somewhat faster.

This is a byte-code threaded implementation. I ran some comparisons between that and a direct-threaded 
implementation.  I was surprised to find that in every case, the byte-code threaded implementation ran 
faster.  It was not much faster, over 500 million iterations, about .4 second for the following simple loop:

: bench 1000 1000 * 500 * begin 1- if drop ret then again ;

gcc:  1.062 seconds
vs19: 1.375 seconds
