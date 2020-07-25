@echo off

if "--%1%--" == "--mf--" goto make-mf
goto unknown

:make-mf
@echo on
gcc -g -Ofast -S -fverbose-asm mf.c
gcc -g -Ofast -o mf mf.c
@echo off
if "--%2%--" == "--1--" mf
goto done

:unknown
echo Unknown make. I know how to make these:
echo.
echo    mh - makes mf.exe (my machine forth)
echo.
echo    NOTE: if arg2 is given it then runs the program

:done
