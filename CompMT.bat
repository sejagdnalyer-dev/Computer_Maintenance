@echo off
setlocal enabledelayedexpansion

:: ======================================================
::           PC MAINTENANCE AUTOMATION TOOL
:: ======================================================

:: Check for Administrator Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ======================================================
    echo Please run this script as Administrator.
    echo ======================================================
    pause
    exit /b
)

:: Log file location
set "logfile=%USERPROFILE%\Desktop\maintenance_log.txt"

:: Console Appearance
title PC Maintenance Automation Tool
color 0A

:: ======================================================
:: MENU
:: ======================================================

:menu
cls
echo ======================================================
echo            PC MAINTENANCE AUTOMATION MENU
echo ======================================================
echo [1] Run DISM Repair
echo [2] Run SFC Scan
echo [3] Disk Optimization
echo [4] Clean Temporary Files
echo [5] Run Full Maintenance
echo [6] Windows Update Scan
echo [7] Exit
echo ======================================================
echo.
set /p choice="Enter your choice (1-7): "

if "%choice%"=="1" goto dism
if "%choice%"=="2" goto sfc
if "%choice%"=="3" goto disk
if "%choice%"=="4" goto clean_temp
if "%choice%"=="5" goto all
if "%choice%"=="6" goto update
if "%choice%"=="7" exit

goto menu

:: ======================================================
:: DISM REPAIR
:: ======================================================
:dism
cls

echo ======================================================
echo DISM REPAIR
echo ======================================================
echo.
echo DISM will:
echo - Scan Windows component files
echo - Repair corrupted Windows image files
echo - Download healthy files from Windows Update
echo.
echo This may take several minutes.
echo.

echo ====================================================== >> "%logfile%"
echo [%date% %time%] STARTING DISM REPAIR >> "%logfile%"

echo Running DISM...
echo Live progress will appear below:
echo.

:: SHOW LIVE DISM PROGRESS
DISM /Online /Cleanup-Image /RestoreHealth

echo.
echo DISM operation completed.
echo [%date% %time%] DISM FINISHED >> "%logfile%"

echo.
echo Official DISM log:
echo C:\Windows\Logs\DISM\dism.log
echo.

pause
goto menu

:: ======================================================
:: SYSTEM FILE CHECKER
:: ======================================================
:sfc
cls

echo ======================================================
echo SYSTEM FILE CHECKER (SFC)
echo ======================================================
echo.
echo SFC will:
echo - Scan protected Windows system files
echo - Repair corrupted files automatically
echo.
echo This may take several minutes.
echo.

echo ====================================================== >> "%logfile%"
echo [%date% %time%] STARTING SFC SCAN >> "%logfile%"

echo Running SFC Scan...
echo Live progress will appear below:
echo.

:: SHOW LIVE SFC PROGRESS
sfc /scannow

echo.
echo SFC scan completed.
echo [%date% %time%] SFC FINISHED >> "%logfile%"

echo.
pause
goto menu

:: ======================================================
:: DISK OPTIMIZATION
:: ======================================================
:disk
cls

echo ======================================================
echo DISK OPTIMIZATION
echo ======================================================
echo.
echo This will:
echo - Optimize HDD performance
echo - Run TRIM on SSDs
echo - Improve storage efficiency
echo.

echo ====================================================== >> "%logfile%"
echo [%date% %time%] STARTING DISK OPTIMIZATION >> "%logfile%"

echo Running Disk Optimization...
echo.

defrag C: /O

echo.
echo Disk optimization completed.
echo [%date% %time%] DISK OPTIMIZATION FINISHED >> "%logfile%"

pause
goto menu

:: ======================================================
:: TEMP FILE CLEANUP
:: ======================================================
:clean_temp
cls

echo ======================================================
echo TEMPORARY FILE CLEANUP
echo ======================================================
echo.
echo This will:
echo - Remove temporary junk files
echo - Free disk space
echo - Keep system temp folders intact
echo.

echo ====================================================== >> "%logfile%"
echo [%date% %time%] CLEANING TEMP FILES >> "%logfile%"

echo Cleaning User Temp Files...
del /f /s /q "%temp%\*" >nul 2>&1
for /d %%x in ("%temp%\*") do rd /s /q "%%x"

echo Cleaning Windows Temp Files...
del /f /s /q "%systemroot%\Temp\*" >nul 2>&1
for /d %%x in ("%systemroot%\Temp\*") do rd /s /q "%%x"

echo.
echo Temporary files cleanup completed.
echo [%date% %time%] TEMP CLEANUP FINISHED >> "%logfile%"

pause
goto menu

:: ======================================================
:: FULL MAINTENANCE
:: ======================================================
:all
cls

echo ======================================================
echo RUNNING FULL MAINTENANCE SUITE
echo ======================================================
echo.

call :dism
call :sfc
call :disk
call :clean_temp

echo.
echo ======================================================
echo FULL MAINTENANCE COMPLETED
echo ======================================================
echo.

pause
goto menu

:: ======================================================
:: WINDOWS UPDATE
:: ======================================================
:update
cls

echo ======================================================
echo WINDOWS UPDATE SCAN
echo ======================================================
echo.
echo This will:
echo - Scan for Windows updates
echo - Download available updates
echo - Start installation if available
echo.

echo ====================================================== >> "%logfile%"
echo [%date% %time%] STARTING WINDOWS UPDATE >> "%logfile%"

echo Starting Windows Update Scan...
echo.

UsoClient StartScan
timeout /t 5 >nul

echo Downloading Updates...
UsoClient StartDownload
timeout /t 5 >nul

echo Installing Updates...
UsoClient StartInstall

echo.
echo Windows Update commands executed.
echo [%date% %time%] WINDOWS UPDATE FINISHED >> "%logfile%"

pause
goto menu