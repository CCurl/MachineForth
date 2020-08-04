@echo off

if "--%1%--" == "--fc--" goto make-fc
if "--%1%--" == "--all--" goto make-all
if "--%1%--" == "--mf--" goto make-mf
if "--%1%--" == "--fd--" goto make-fd
if "--%1%--" == "--fa--" goto make-fa
if "--%1%--" == "--fi--" goto make-fi
if "--%1%--" == "--fb--" goto make-fb
if "--%1%--" == "--ex--" goto make-ex
if "--%1%--" == "--forth--" goto make-forth
if "--%1%--" == "--nd--" goto make-nd
if "--%1%--" == "--aa--" goto make-aa
if "--%1%--" == "--st--" goto make-st
if "--%1%--" == "--br--" goto make-br
if "--%1%--" == "--f2--" goto make-f2
goto unknown

:make-fc
set output=forth-compiler
set c-files=forth-compiler.c 
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
rem gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "--1--" forth-compiler
goto done

:make-all
call make fc 1
call make fd 1
call make forth
call make f2

if "--%2%--" NEQ "----" forth
goto done


:make-mf
set output=mforth
set c-files=mforth.c 
set c-files=%c-files% forth-vm.c
echo gcc -Ofast -o %output% %c-files%
gcc -Ofast -o %output% %c-files%
if "--%2%--" == "--1--" mforth
goto done

:make-forth
set output=forth
set c-files=forth.c
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "--1--" forth
goto done

:make-fd
set output=forth-dis
set c-files=forth-dis.c 
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "--1--" forth-dis
goto done

:make-fb
call forth-compiler
call forth-dis
if "--%2%--" NEQ "----" forth
goto done

:make-ex
forth-compiler.exe -i:ex.src -o:ex.bin -m:3
forth-dis -i:ex.bin -o:ex.lst
if "--%2%--" == "----" goto done
forth -i:ex.bin
goto done

:make-aa
set output=Forth-STC-dis
set c-files=%output%.c Forth-STC-opcodes.c %output%-opcode.c forth-vm.c vm-prims.c logger.c
echo gcc -g -o %output% %c-files%
gcc -g -o %output% %c-files%
if "--%2%--" == "----" goto done
Forth-STC-dis -i:forth.bin -o:Forth-STC-Words.inc
goto done

REM Gen and build a subroutine-threaded version in ASSEMBLER
:make-st
set output=Forth-STC
set c-files=%output%-dis.c %output%-opcodes.c %output%-dis-opcode.c forth-vm.c vm-prims.c logger.c
echo gcc -g -o %output%-dis %c-files%
gcc -g -o %output%-dis %c-files%
if "--%2%--" == "----" goto done
REM Forth-STC-dis -i:forth.bin -o:Forth-STC-Words.inc
echo del Forth-STC.exe
del Forth-STC.exe
echo fasm %output%.asm
fasm %output%.asm
echo Forth-STC ...
Forth-STC
goto done

echo making %output% ...
set inp-files=%output%.asm
rem set options=-Xassembler -a=%output%.lst
echo fasm %inp-files%
fasm %inp-files%
if "--%2%--" NEQ "----" NewForth-I
goto done

:make-fa
set output=forth-dis2
set c-files=forth-dis2.c 
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "----" goto done
forth-dis2
rem gcc -c forth.s
rem ld -e main forth.o -lkernel32
goto done

:make-f2
echo fasm forth2.as
fasm forth2.as
if "--%2%--" == "----" goto done
forth2 forth.bin
goto done

:make-fi
set output=forth-disIT
set c-files=forth-disIT.c 
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "----" goto done
forth-disIT
rem gcc -c forth.s
rem ld -e main forth.o -lkernel32
goto done

:make-nd
set output=newfd
set c-files=newfd.c 
set c-files=%c-files% forth-vm.c
set c-files=%c-files% vm-prims.c
set c-files=%c-files% logger.c
echo making %output% ...
echo gcc -g -o %output% %c-files%
gcc -g -o tmp %c-files%
strip -o %output%.exe -g -S -d -X tmp.exe
del tmp.exe
if "--%2%--" == "--1--" newfd
goto done

:make-br
call make fc 1
call make fd 1
call make forth
call make f2 1
goto done

:unknown
echo Unknown make. I know how to make these:
echo.
echo    fc - makes forth-compiler.exe
echo    fd - makes forth-dis.exe
echo    forth - makes forth.exe
echo    br - builds and runs the above 3 programs
echo    fb - builds the forth VM image from forth.src
echo    ex - makes ex.exe (the stand-alone example)
echo    nc - makes new-forth-compiler.exe
echo    nd - makes new-forth-dis.exe
echo    fa - makes forth-dis2.exe
echo    fi - makes forth-disIT.exe
echo    aa - makes NewForth.exe
echo    st - makes forth-stc.exe
echo.
echo    NOTE: if arg2 is given it then runs the program

:done
