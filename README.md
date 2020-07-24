# MachineForth
This is a compiler/vm for a simple forth on Windows.

It was inspired by Chuck Moore's "Machine Forth". It is completely contained in one file, mg.c

It has circular stacks, both data and return.

It is exceedingly easy to add primitives and add any desired functionality.

Please refer to this for more information:

http://www.ultratechnology.com/mfp21.htm#source

It can be built using either Visual Studio 19, or GCC. 
To build it using GCC, use 'make mf'. This depends on having MinGW installed.

- The VS19 version is 16k.
- The GCC version is 43k.
- The VS19 version is somewhat faster.
