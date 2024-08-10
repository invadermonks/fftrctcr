@echo off
setlocal enabledelayedexpansion

if not exist fft.bin (
    echo Error: fft.bin not found. Please place your Final Fantasy Tactics PSX ISO as fft.bin in the same directory as this script.
    pause
    exit /b
)

if not exist fftrctcr.exe (
    echo Error: fftrctcr.exe not found. Please place it in the same directory as this script.
    pause
    exit /b
)

REM SET random_degree=0.8
REM SET difficulty_multiplier=1.3
REM SET "seed_dir=..\..\seeds"
SET flags=afijmprstuwy

if not defined random_degree (
  set /p random_degree="Enter the randomness degree [range 0 to 1.0] (e.g., 0.8): "
)

if not defined difficulty_multiplier (
  set /p difficulty_multiplier="Enter the difficulty multiplier (e.g., 1.3):  "
)

if not defined flags (
  set /p flags="Enter the flags (e.g., afijmprstuwy):  "
)

:gen_seed

FOR /F "usebackq tokens=* delims=" %%i IN (`powershell -command "[int](Get-Date).ToUniversalTime().Subtract([datetime]'1970-01-01').TotalSeconds"`) DO SET TIMESTAMP=%%i

REM sourcefile, flags, seed, random_degree, difficulty_multiplier
fftrctcr.exe fft.bin "%flags%" "%TIMESTAMP%" %random_degree% %difficulty_multiplier%

if not exist fftr_spoiler_%TIMESTAMP%.txt (    
    if exist fft.afijmprstuwy.%TIMESTAMP%.bin (
        del fft.afijmprstuwy.%TIMESTAMP%.bin
    )
    echo Seed generation failed. Retrying in 3 seconds...
    timeout 3
    goto gen_seed
) else (
    echo Successfully generated seed at fft.afijmprstuwy.%TIMESTAMP%.bin
)
 
if EXIST "%seed_dir%" (
    echo Moving generated seed to "%seed_dir%"
    move fft.afijmprstuwy.%TIMESTAMP%.bin "%seed_dir%"
    move fft.afijmprstuwy.%TIMESTAMP%.cue "%seed_dir%"
    move fftr_spoiler_%TIMESTAMP%.txt "%seed_dir%"
)

pause
