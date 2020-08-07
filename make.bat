@echo off

if "--%1%--" == "--mf--" goto make-mf
if "--%1%--" == "--mfd--" goto make-mfd
goto unknown

:make-mf
set output=mforth
set c-files=mforth.c 
set c-files=%c-files% forth-vm.c
echo gcc -Ofast -o %output% %c-files%
gcc -Ofast -o %output% %c-files%
if "--%2%--" == "--1--" mforth -b
goto done

:make-mfd
set output=mfd
set c-files=mfd.c 
echo gcc -Ofast -o %output% %c-files%
gcc -Ofast -o %output% %c-files%
if "--%2%--" == "--1--" mfd
goto done


:unknown
echo Unknown make. I know how to make these:
echo.
echo    mf  - makes mforth.exe (Machine Forth)
echo    mfd - makes mfd.exe (Machine Forth Disassembler)
echo.
echo    NOTE: if arg2 is given it then runs the program

:done
