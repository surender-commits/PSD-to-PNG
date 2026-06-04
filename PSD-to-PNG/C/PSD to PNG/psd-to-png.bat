@echo off
setlocal enabledelayedexpansion

title PSD to PNG Batch Converter

echo ------------------------------------------
echo         PSD to PNG Batch Converter
echo ------------------------------------------
echo.

set "Auto_Close=5"
set "magick=C:\PSD to PNG\ImageMagick\magick.exe"

if "%~1"=="" (
    echo [!] No input file provided
    echo Usage: %~nx0 "file.psd"
    echo.
    call :CloseExit 1
)

set "InputFile=%~1"
set "OutputFile=%~dpn1.png"

echo Input:  "%InputFile%"
echo Output: "%OutputFile%"
echo ------------------------------------------
echo.
echo Converting, please wait...

"%magick%" "%InputFile%[0]" -define png:color-type=6 -quality 100 "%OutputFile%"

if !errorlevel! neq 0 (
    echo.
    echo [!] ERROR: ImageMagick failed to convert the file.
    echo     Check if ImageMagick is installed at: "%magick%"
    echo     Check if the input file exists: "%InputFile%"
    echo.
    call :CloseExit 1
)

echo [✓] Conversion successful!
echo Output saved to: "%OutputFile%"
echo.

:CloseExit
echo Closing in %Auto_Close% seconds...
timeout /t %Auto_Close% /nobreak >nul
exit