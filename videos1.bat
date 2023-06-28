@echo off
if %errorLevel% == 0 (
     echo Success! The installation is started, waiting....
     goto gotAdmin
) else (
 echo Failure! You need to be admin to install this program.
 goto UACPrompt
)

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin

set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
set COMMON=--user-data-dir="%appdata%\Local\Google\Chrome\User Data\HENG_Chrome" --window-size=500,500 --window-position=1400,90 --no-first-run --disable-plugins --disable-default-apps --disable-extensions --disable-notifications --disable-file-system  

start "" %CHROME% %COMMON% file:///C:/Users/runneradmin/Desktop/videos.html
timeout /t 15 /nobreak
start "" %CHROME% %COMMON% "https://www.youtube.com/watch?v=GbOXUftBqHc&loop=0"
