-d- immediate 8 111 7 14  8 113 7  17 23 29  8 2  5 1 -e-
immediate
-d- inline    8 111 7 14  8 113 7  17 23 29  8 4  5 1 -e- immediate

-d- : 8 108 7 1 -e- immediate
-d- ;     1 -e- inline
-d- !AC   5 -e- inline
-d- @AC   6 -e- inline
-d- SYS   7 -e- inline
-d- @A+   9 -e- inline
-d- @A   11 -e- inline
-d- !    12 -e- inline
-d- !A+  13 -e- inline
-d- @    14 -e- inline
-d- !A   15 -e- inline
-d- COM  16 -e- inline
-d- 2*   17 -e- inline
-d- 2/   18 -e- inline
-d- +*   19 -e- inline
-d- XOR  20 -e- inline
-d- AND  21 -e- inline
-d- +    23 -e- inline
-d- R>   24 -e- inline
-d- A    25 -e- inline
-d- AND  25 -e- inline
-d- DUP  26 -e- inline
-d- OVER 27 -e- inline
-d- >R   28 -e- inline
-d- >A   29 -e- inline
-d- DROP 31 -e- inline

: emit   101 SYS ;
: .      102 SYS ;
: .h     103 SYS ;
: fopen  104 SYS ;
: fclose 105 SYS ;
: C,     106 SYS ;
: ,      107 SYS ;
: create 108 SYS ;
: find   109 SYS ;
: (H)    110 SYS ;
: (L)    111 SYS ;
: state  112 SYS ;
: CELL   113 SYS ;

: space   32 emit ;
: bye state >A 999 !A ;

123 DUP .h space . space 65 emit
