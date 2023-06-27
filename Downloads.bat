@echo off
powershell -Command "choco install anydesk -y"
powershell -Command "choco install qbittorrent -y"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/wqeqwpqaduhqe97512/r3/main/Start.bat -OutFile start.bat"

curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\link.bat https://drive.google.com/file/d/1KVNBOK7JT3Ho-UuPWJmVpqPy3_WMFrNT/view?usp=sharing
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1
set password=@#Disala123456
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/wqeqwpqaduhqe97512/r3/main/link.bat -OutFile link.bat"
