@echo off
cls
:menu
cls
color 3
echo  ====================
echo  *   LEANDRO LIMA   *
echo  ====================
echo            \ 
echo             \  -__- 
echo              \ (OO)\______  
echo                (__)\      )\/\ 
echo                     //---W//   
echo                    //    // 
date /t
echo Computer: %computername%        
echo User: %username%
@echo.

echo            TASKS MENU
echo  ==================================
echo  ===  1. Control Panel         === 
echo  ===  2. Disk Cleanning        ===
echo  ===  3. Task Manager          ===
echo  ===  4. Turn off the Computer ===
echo  ===  5. Restart the Computer  ===
echo  ===  6. Exit                  === 
echo  ==================================

set /p option= Choice an option: 
echo ------------------------------
if %option% equ 1 goto option1
if %option% equ 2 goto option2
if %option% equ 3 goto option3
if %option% equ 4 goto option4
if %option% equ 5 goto option5
if %option% equ 6 goto option6
if %option% geq 7 goto option7

:option1
cls
echo =========================
echo *     Control Panel     *
echo =========================
control
pause
goto menu

:option2
cls
echo ==========================
echo *     Disk Cleanning     *
echo ==========================
cleanmgr
pause
goto menu

:option3
cls
echo ========================
echo *     Task Manager     *
echo ========================
taskmgr
pause
goto menu

:option4
cls
echo ==========================
echo *     Turning off...     *
echo ==========================
shutdown /s /t 1

:option5
cls
echo =========================
echo *     Restarting...     *
echo =========================
shutdown /r /t 1

:option6
cls
exit

:option7
echo ===========================
echo *     Invalid Option!     *
echo ===========================
pause
goto menu
