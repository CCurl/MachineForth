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

: EMIT   101 SYS ; inline
: .D     102 SYS ; inline
: .H     103 SYS ; inline
: FOPEN  104 SYS ; inline
: FCLOSE 105 SYS ; inline
: C,     106 SYS ; inline
: ,      107 SYS ; inline
: CREATE 108 SYS ; inline
: FIND   109 SYS ; inline
: (H)    110 SYS ; inline
: (L)    111 SYS ; inline
: (ST)   112 SYS ; inline
: CELL   113 SYS ; inline
: MEM    114 SYS ; inline
: MEM-SZ 115 SYS ; inline

: sp   32 EMIT ; inline
: bye (ST) >A 999 !A ;
: negate COM 1 + ;
: - negate + ;
: .d .D sp ;
: .h .H sp ;

: H (H) @ ; : L (L) @ ;

H MEM - .d 
MEM MEM-SZ + L - .d
L H - .d
