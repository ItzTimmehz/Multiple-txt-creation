:: Made by ItzTimmehz (https://github.com/ItzTimmehz)

@echo off
setlocal enabledelayedexpansion

:: Prompt for the directory where files will be created
set /p "dir=Enter the directory where the files will be created: "
if "%dir%"=="" (
    echo No directory specified. Exiting...
    pause
    exit /b
)

:: Check if the directory exists
if not exist "%dir%" (
    echo Directory does not exist. Exiting...
    pause
    exit /b
)

:: Prompt for the number of files to create
set /p "count=Enter the number of files to create: "
if "%count%"=="" (
    echo No number specified. Exiting...
    pause
    exit /b
)

:: Prompt for the message to write to each file
set /p "message=Enter the message to write to each file: "
if "%message%"=="" (
    echo No message specified. Exiting...
    pause
    exit /b
)

:: Change to the specified directory
cd /d "%dir%"

:: Loop to create the specified number of text files and write the message
for /l %%i in (1,1,%count%) do (
    echo %message% > "file%%i.txt"
)

echo %count% text files have been created and the message has been written to each file in %dir%.
pause
exit 

:: Made by ItzTimmehz (https://github.com/ItzTimmehz)