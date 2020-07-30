@echo off

if "--%1%--" == "--mf--"  goto make-mf
if "--%1%--" == "--mfa--" goto make-mfa
if "--%1%--" == "--mfd--" goto make-mfd
goto unknown

:make-mf
@echo on
gcc -g -Ofast -o mf mf.c
@echo off
if "--%2%--" == "--1--" mf
goto done

:make-mfa
@echo on
gcc -g -Ofast -S -fverbose-asm mf.c
goto done

:make-mfd
@echo on
gcc -g -Ofast -o mfd mfd.c
@echo off
if "--%2%--" == "--1--" mfd
goto done

:unknown
echo Unknown make. I know how to make these:
echo.
echo    mh - makes mf.exe (my machine forth)
echo.
echo    NOTE: if arg2 is given it then runs the program

:done
