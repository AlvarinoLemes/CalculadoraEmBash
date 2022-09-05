@echo off
:1
cls
echo Digite a equacao - Ex: (12-6)*2/10+4/7-13
set /p valor= :
call :calc "%valor%"
pause >nul
goto 1
:calc
setlocal
set "vbs=%temp%\tmp.vbs"
>"%vbs%" echo On Error Resume Next : WScript.Echo Eval(WScript.Arguments(0))
cscript //nologo "%vbs%" "%~1"
del "%vbs%"
exit /b