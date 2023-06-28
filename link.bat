@echo off
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
set COMMON=--user-data-dir="%appdata%\Local\Google\Chrome\User Data\HENG_Chrome-001" --window-size=500,500 --window-position=1400,90 --no-first-run --disable-plugins --disable-default-apps --disable-extensions --disable-notifications --disable-file-system  
start "" %CHROME% %COMMON% "https://www.youtube.com/watch?v=GbOXUftBqHc&list=TLGGaJZ8haMJ_asyNjA4MjAyMg&t=0s&loop=0"
