@echo off
setlocal

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

:: Prompt for random_degree and difficulty_multiplier
set /p random_degree=Enter the randomness degree (e.g., 0.8): 
set /p difficulty_multiplier=Enter the difficulty multiplier (e.g., 1.3): 

:: sourcefile, flags, seed, random_degree, difficulty_multiplier
fftrctcr.exe fft.bin afijmprstuwy "" %random_degree% %difficulty_multiplier%

:: Move generated files to the seeds directory
::move fft.afijmprstuwy.* ..\..\seeds
::move fftr_spoiler* ..\..\seeds

pause
