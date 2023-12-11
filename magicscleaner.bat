@echo off
:wea
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
color 04
echo Hello and welcome
echo Select your option
echo 1. Clean
echo 2. FN Tools
set /p key=key : 
if %key%==1 goto :waaa
if %key%==2 goto :FNTINGS



:waaa
cls
echo you are about to go through the cleaning process. Closing the process
echo will cancel the cleaning and will NOT be completed.
echo once the cleaner is ran it will not return any deleted files.
pause
cls
echo press again to start
pause
cls
Title Cache Cleaner
    pushd "%CD%"
    CD /D "%~dp0"
color 0B
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :tempfiles


:tempfiles
color 3
cls
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%

cd /d c:\windows\tempor~1 && rd /s /q .\
cd /d c:\windows\temp && rd /s /q .\
cd /d c:\windows\tmp && rd /s /q .\
cd /d c:\windows\ff*.tmp && rd /s /q .\
cd /d c:\windows\history && rd /s /q .\
cd /d c:\windows\cookies && rd /s /q .\
cd /d c:\windows\recent && rd /s /q .\
cd /d c:\windows\spool\printers && rd /s /q .\
cls
echo Temps and uselessness is gone. Press any button
pause


goto :logs
:logs
cls
del *.log /a /s /q /f
cls
echo Logs cleared press any button to go next
pause

goto :temps
:temps
TITLE Temp Files Delete
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
cls
echo Done.
cls
goto :gotAdmin

:FNTINGS
cls
echo theres not that many options here.
echo 1. FNRES changer.
echo 2. FNSetting Optimizer.
echo 3. TimerResolution
echo 4. TCP Optimizer (Better ping)
set /p we=answer : 
if %we%==1 goto :Fnres
if %we%==2 goto :fnsetting
if %we%==3 goto :timer
if %we%==4 goto :tcp


:Fnres
cls
echo Please note that THIS SOFTWARE DOES NOT GIVE YOU MORE FOV. IT JUST CHANGES THE RES IN YOUR FORTNITE FILES AND MAKES IT EASIER FOR YOU.
pause
cls
cd /d "%~dp0files/reschangr" || (
    echo Error: Unable to change the directory to 'files'.
    pause
    exit /b
)

set "exeFileName=dontrunme-runthrubatfile.exe"

if exist "%exeFileName%" (
    echo Running %exeFileName%...
    start "" "%exeFileName%"
) else (
    echo Error: %exeFileName% not found.
    pause
)
cls
goto :gotAdmin

:fnsetting
cls
set "userName=%USERNAME%"
start  "" "%USERPROFILE%\Documents\FortniteGame\Saved\Config\WindowsClient"
start "" "%~dp0files/GameUserSettingsini"
cls
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
echo NOW DRAG THE GameUserSettings.ini FILE INTO THE FORTNITE FILE.
pause
cls
goto :gotAdmin

:timer
cls
cd /d "%~dp0files/timerres" || (
    echo Error: Unable to change the directory to 'files'.
    pause
    exit /b
)

set "exeFileName=TimerResolution.exe"

if exist "%exeFileName%" (
    echo Running %exeFileName%...
    start "" "%exeFileName%"
) else (
    echo Error: %exeFileName% not found.
    pause
)
cls
goto :gotAdmin

:tcp
cls
cd /d "%~dp0files/tcp" || (
    echo Error: Unable to change the directory to 'files'.
    pause
    exit /b
)

set "exeFileName=TCPOptimizer_v308.exe"

if exist "%exeFileName%" (
    echo Running %exeFileName%...
    start "" "%exeFileName%"
) else (
    echo Error: %exeFileName% not found.
    pause
)
cls
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
echo Set the slider all the way right and press optimal. If requesting admin. Goto files/tcp/ and run the program as admin
pause
goto :gotAdmin