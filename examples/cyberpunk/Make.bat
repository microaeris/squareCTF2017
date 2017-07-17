echo off
set BIN=..\..\bin
set OBJ=obj

if "%1"=="clean" (
	if exist %OBJ% rd /s/q %OBJ%
	if exist main.gb del main.gb
	goto end
)

if not exist %OBJ% mkdir %OBJ%
call %BIN%\gbdk-n-compile.bat main.c -o %OBJ%\main.rel
call %BIN%\gbdk-n-link.bat %OBJ%\main.rel -o %OBJ%\main.ihx
call %BIN%\gbdk-n-make-rom.bat %OBJ%\main.ihx main.gb

:end
