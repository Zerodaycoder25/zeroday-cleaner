@echo off
title 🔧 ZERODAY CLEANER - @zerodaycoder
color 0A
mode con: cols=80 lines=30

:: ====== BEEP SOUND ======
powershell -c [console]::beep(700,300)

:: ====== SPINNER ANIMATION ======
setlocal EnableDelayedExpansion
set "spinner=\|/-"
for /L %%i in (1,1,12) do (
    set /A index=%%i %% 4
    set "char=!spinner:~%index%,1!"
    cls
    echo.
    echo Initializing ZERODAY CLEANER !char!
    timeout /nobreak /t 1 >nul
)

:: ====== ASCII BANNER ======
cls
echo ------------------------------------------------------------
echo        ████████╗███████╗██████╗ ██████╗ ██╗   ██╗           
echo        ╚══██╔══╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝           
echo           ██║   █████╗  ██████╔╝██████╔╝ ╚████╔╝            
echo           ██║   ██╔══╝  ██╔═══╝ ██╔═══╝   ╚██╔╝             
echo           ██║   ███████╗██║     ██║        ██║              
echo           ╚═╝   ╚══════╝╚═╝     ╚═╝        ╚═╝              
echo ------------------------------------------------------------
echo 🔧 ZERODAY CLEANER — SYSTEM OPTIMIZER BY @zerodaycoder
echo ------------------------------------------------------------
timeout /t 2 >nul

:: ====== CLEAN TEMP FILES ======
echo.
echo 🔄 Deleting temporary files...
timeout /t 1 >nul
del /f /s /q %TEMP%\* >nul 2>&1
del /f /s /q C:\Windows\Temp\* >nul 2>&1
echo ✔ Temp files removed.

:: ====== DISK CLEANUP ======
echo.
echo 💽 Running Disk Cleanup...
timeout /t 1 >nul
cleanmgr /sagerun:1

:: ====== COMPLETION MESSAGE ======
echo.
echo --------------------------------------------------
echo ✅ Cleanup Complete! System Refreshed.
echo 🔧 Thank you for using @zerodaycoder’s tool
echo 💻 Follow: instagram.com/zerodaycoder
echo --------------------------------------------------

:: Final beep and pause
powershell -c [console]::beep(900,300)
timeout /t 3
pause
exit
