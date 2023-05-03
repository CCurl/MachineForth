#/bin/sh
clang -m32 -O3 -o mf -D isPC mf.c
clang -m64 -O3 -o mf64 -D isPC mf.c
