@echo off

if "--%1%--" == "--mf--" goto make-mf
goto unknown

:make-mf
set output=mf
set c-files=mf.c 
set c-files=%c-files%
echo making %output% ...
echo gcc -g -o %output% %c-files%
rem gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "--1--" mf
goto done

:unknown
echo Unknown make. I know how to make these:
echo.
echo    mh - makes mf.exe (my machine forth)
echo.
echo    NOTE: if arg2 is given it then runs the program

:done
