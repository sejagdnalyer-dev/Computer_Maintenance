@echo off
title COMPLETE COMPUTER TROUBLESHOOTING SYSTEM
color 0B

:MAINMENU
cls
echo ============================================================
echo          COMPLETE COMPUTER TROUBLESHOOTING SYSTEM
echo ============================================================
echo.
echo Select Guide Category:
echo.
echo [1] Hardware Troubleshooting Guide
echo [2] Software Troubleshooting Guide
echo [3] BIOS Troubleshooting Guide
echo [4] Exit
echo.
set /p mainchoice=Enter choice: 

if "%mainchoice%"=="1" goto HARDWARE
if "%mainchoice%"=="2" goto SOFTWARE
if "%mainchoice%"=="3" goto BIOS
if "%mainchoice%"=="4" exit

goto MAINMENU

:: ============================================================
:: HARDWARE MENU
:: ============================================================

:HARDWARE
cls
echo ============================================================
echo              HARDWARE TROUBLESHOOTING GUIDE
echo ============================================================
echo.
echo [1] Power Supply Troubleshooting
echo [2] RAM Troubleshooting
echo [3] Hard Drive / SSD Troubleshooting
echo [4] CPU Overheating Troubleshooting
echo [5] GPU / Display Troubleshooting
echo [6] Motherboard Troubleshooting
echo [7] Network Troubleshooting
echo [8] Keyboard and Mouse Troubleshooting
echo [9] Printer Troubleshooting
echo [10] USB Port Troubleshooting
echo [11] Cleaning Procedure
echo [12] Maintenance Guide
echo [13] Back to Main Menu
echo.
set /p hardwarechoice=Select option: 

if "%hardwarechoice%"=="1" goto PSU
if "%hardwarechoice%"=="2" goto RAM
if "%hardwarechoice%"=="3" goto DISK
if "%hardwarechoice%"=="4" goto CPU
if "%hardwarechoice%"=="5" goto GPU
if "%hardwarechoice%"=="6" goto BOARD
if "%hardwarechoice%"=="7" goto NET
if "%hardwarechoice%"=="8" goto KBM
if "%hardwarechoice%"=="9" goto PRINTER
if "%hardwarechoice%"=="10" goto USB
if "%hardwarechoice%"=="11" goto CLEAN
if "%hardwarechoice%"=="12" goto MAINTAIN
if "%hardwarechoice%"=="13" goto MAINMENU

goto HARDWARE

:: ============================================================
:: SOFTWARE MENU
:: ============================================================

:SOFTWARE
cls
echo ============================================================
echo              SOFTWARE TROUBLESHOOTING GUIDE
echo ============================================================
echo.
echo [1] Slow Computer Troubleshooting
echo [2] Windows Boot Problems
echo [3] Virus and Malware Troubleshooting
echo [4] Driver Troubleshooting
echo [5] Internet Troubleshooting
echo [6] Audio Troubleshooting
echo [7] Application Crash Troubleshooting
echo [8] Blue Screen Troubleshooting
echo [9] System File Repair Guide
echo [10] Back to Main Menu
echo.
set /p softwarechoice=Select option: 

if "%softwarechoice%"=="1" goto SLOWPC
if "%softwarechoice%"=="2" goto BOOT
if "%softwarechoice%"=="3" goto VIRUS
if "%softwarechoice%"=="4" goto DRIVER
if "%softwarechoice%"=="5" goto INTERNET
if "%softwarechoice%"=="6" goto AUDIO
if "%softwarechoice%"=="7" goto APP
if "%softwarechoice%"=="8" goto BSOD
if "%softwarechoice%"=="9" goto SFC
if "%softwarechoice%"=="10" goto MAINMENU

goto SOFTWARE

:: ============================================================
:: BIOS MENU
:: ============================================================

:BIOS
cls
echo ============================================================
echo                BIOS TROUBLESHOOTING GUIDE
echo ============================================================
echo.
echo [1] Enter BIOS Guide
echo [2] Boot Device Troubleshooting
echo [3] CMOS Battery Troubleshooting
echo [4] Reset BIOS Settings
echo [5] CPU Fan Error Troubleshooting
echo [6] BIOS Beep Codes Guide
echo [7] Black Screen Troubleshooting
echo [8] BIOS Update Procedure
echo [9] Back to Main Menu
echo.
set /p bioschoice=Select option: 

if "%bioschoice%"=="1" goto ENTERBIOS
if "%bioschoice%"=="2" goto BOOTDEVICE
if "%bioschoice%"=="3" goto CMOS
if "%bioschoice%"=="4" goto RESETBIOS
if "%bioschoice%"=="5" goto CPUFAN
if "%bioschoice%"=="6" goto BEEP
if "%bioschoice%"=="7" goto BLACKSCREEN
if "%bioschoice%"=="8" goto UPDATEBIOS
if "%bioschoice%"=="9" goto MAINMENU

goto BIOS

:: ============================================================
:: HARDWARE GUIDES
:: ============================================================

:PSU
cls
echo POWER SUPPLY TROUBLESHOOTING
echo.
echo STEP 1: Check power cable
echo STEP 2: Verify wall outlet
echo STEP 3: Check PSU switch
echo STEP 4: Observe motherboard lights
echo STEP 5: Test another power cable
echo STEP 6: Replace PSU if faulty
pause
goto HARDWARE

:RAM
cls
echo RAM TROUBLESHOOTING
echo.
echo STEP 1: Turn off PC
echo STEP 2: Remove RAM carefully
echo STEP 3: Clean RAM contacts
echo STEP 4: Reinsert RAM
echo STEP 5: Test one stick at a time
echo STEP 6: Run memory diagnostic
pause
goto HARDWARE

:DISK
cls
echo HARD DRIVE / SSD TROUBLESHOOTING
echo.
echo STEP 1: Check SATA cable
echo STEP 2: Check power cable
echo STEP 3: Verify BIOS detection
echo STEP 4: Run CHKDSK
echo STEP 5: Backup important files
pause
goto HARDWARE

:CPU
cls
echo CPU OVERHEATING TROUBLESHOOTING
echo.
echo STEP 1: Check CPU fan
echo STEP 2: Clean dust
echo STEP 3: Replace thermal paste
echo STEP 4: Improve airflow
echo STEP 5: Monitor temperatures
pause
goto HARDWARE

:GPU
cls
echo GPU / DISPLAY TROUBLESHOOTING
echo.
echo STEP 1: Check monitor cable
echo STEP 2: Reseat GPU
echo STEP 3: Connect GPU power cable
echo STEP 4: Test another monitor
echo STEP 5: Update graphics driver
pause
goto HARDWARE

:BOARD
cls
echo MOTHERBOARD TROUBLESHOOTING
echo.
echo STEP 1: Check motherboard lights
echo STEP 2: Inspect capacitors
echo STEP 3: Reset CMOS battery
echo STEP 4: Test minimal setup
pause
goto HARDWARE

:NET
cls
echo NETWORK TROUBLESHOOTING
echo.
echo STEP 1: Restart router
echo STEP 2: Check Ethernet cable
echo STEP 3: Restart PC
echo STEP 4: Update network drivers
pause
goto HARDWARE

:KBM
cls
echo KEYBOARD AND MOUSE TROUBLESHOOTING
echo.
echo STEP 1: Reconnect device
echo STEP 2: Try another USB port
echo STEP 3: Replace batteries
echo STEP 4: Update drivers
pause
goto HARDWARE

:PRINTER
cls
echo PRINTER TROUBLESHOOTING
echo.
echo STEP 1: Check printer power
echo STEP 2: Verify cable/Wi-Fi
echo STEP 3: Check paper and ink
echo STEP 4: Reinstall printer driver
pause
goto HARDWARE

:USB
cls
echo USB PORT TROUBLESHOOTING
echo.
echo STEP 1: Test another device
echo STEP 2: Try another USB port
echo STEP 3: Reinstall USB drivers
pause
goto HARDWARE

:CLEAN
cls
echo HARDWARE CLEANING PROCEDURE
echo.
echo STEP 1: Shut down PC
echo STEP 2: Unplug power cable
echo STEP 3: Use compressed air
echo STEP 4: Clean fans and vents
pause
goto HARDWARE

:MAINTAIN
cls
echo PREVENTIVE MAINTENANCE GUIDE
echo.
echo DAILY: Proper shutdown and virus scan
echo WEEKLY: Delete temporary files
echo MONTHLY: Clean dust and update drivers
pause
goto HARDWARE

:: ============================================================
:: SOFTWARE GUIDES
:: ============================================================

:SLOWPC
cls
echo SLOW COMPUTER TROUBLESHOOTING
echo.
echo STEP 1: Open Task Manager
echo STEP 2: Disable startup apps
echo STEP 3: Run Disk Cleanup
echo STEP 4: Scan for viruses
echo STEP 5: Upgrade RAM/SSD if needed
pause
goto SOFTWARE

:BOOT
cls
echo WINDOWS BOOT TROUBLESHOOTING
echo.
echo STEP 1: Enter Safe Mode
echo STEP 2: Run Startup Repair
echo STEP 3: Run SFC scan
echo STEP 4: Check boot drive
pause
goto SOFTWARE

:VIRUS
cls
echo VIRUS AND MALWARE TROUBLESHOOTING
echo.
echo STEP 1: Disconnect internet
echo STEP 2: Run antivirus scan
echo STEP 3: Remove suspicious apps
echo STEP 4: Restart PC
pause
goto SOFTWARE

:DRIVER
cls
echo DRIVER TROUBLESHOOTING
echo.
echo STEP 1: Open Device Manager
echo STEP 2: Identify problematic driver
echo STEP 3: Update or reinstall driver
pause
goto SOFTWARE

:INTERNET
cls
echo INTERNET TROUBLESHOOTING
echo.
echo STEP 1: Restart modem/router
echo STEP 2: Run ipconfig commands
echo STEP 3: Flush DNS
echo STEP 4: Test connection
pause
goto SOFTWARE

:AUDIO
cls
echo AUDIO TROUBLESHOOTING
echo.
echo STEP 1: Check speaker connection
echo STEP 2: Verify audio output device
echo STEP 3: Reinstall audio drivers
pause
goto SOFTWARE

:APP
cls
echo APPLICATION CRASH TROUBLESHOOTING
echo.
echo STEP 1: Restart application
echo STEP 2: Reinstall app
echo STEP 3: Update software
pause
goto SOFTWARE

:BSOD
cls
echo BLUE SCREEN TROUBLESHOOTING
echo.
echo STEP 1: Note error code
echo STEP 2: Boot into Safe Mode
echo STEP 3: Test RAM
echo STEP 4: Update drivers
pause
goto SOFTWARE

:SFC
cls
echo SYSTEM FILE REPAIR GUIDE
echo.
echo Run these commands:
echo sfc /scannow
echo DISM /Online /Cleanup-Image /RestoreHealth
pause
goto SOFTWARE

:: ============================================================
:: BIOS GUIDES
:: ============================================================

:ENTERBIOS
cls
echo ENTER BIOS GUIDE
echo.
echo Restart PC and press:
echo DEL / F2 / ESC / F10
pause
goto BIOS

:BOOTDEVICE
cls
echo BOOT DEVICE TROUBLESHOOTING
echo.
echo STEP 1: Enter BIOS
echo STEP 2: Open Boot Menu
echo STEP 3: Set Windows drive as Boot Option 1
pause
goto BIOS

:CMOS
cls
echo CMOS BATTERY TROUBLESHOOTING
echo.
echo STEP 1: Turn off PC
echo STEP 2: Remove CMOS battery
echo STEP 3: Wait 5 minutes
echo STEP 4: Install new battery
pause
goto BIOS

:RESETBIOS
cls
echo RESET BIOS SETTINGS
echo.
echo STEP 1: Enter BIOS
echo STEP 2: Load Optimized Defaults
echo STEP 3: Save and Exit
pause
goto BIOS

:CPUFAN
cls
echo CPU FAN ERROR TROUBLESHOOTING
echo.
echo STEP 1: Check CPU fan connection
echo STEP 2: Clean heatsink dust
echo STEP 3: Replace faulty fan
pause
goto BIOS

:BEEP
cls
echo BIOS BEEP CODES GUIDE
echo.
echo CONTINUOUS BEEP = RAM Problem
echo 1 LONG 2 SHORT = GPU Problem
echo NO BEEP = PSU/Motherboard
pause
goto BIOS

:BLACKSCREEN
cls
echo BLACK SCREEN TROUBLESHOOTING
echo.
echo STEP 1: Disconnect peripherals
echo STEP 2: Reseat RAM
echo STEP 3: Reset CMOS
pause
goto BIOS

:UPDATEBIOS
cls
echo BIOS UPDATE PROCEDURE
echo.
echo STEP 1: Download BIOS from manufacturer
echo STEP 2: Copy file to USB
echo STEP 3: Open BIOS Flash Utility
echo STEP 4: Select BIOS file
pause
goto BIOS
