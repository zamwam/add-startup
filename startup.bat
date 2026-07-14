@echo off
echo Adding program to Startup...

:: Path to the program you want to run on startup
set "program=C:\Users\{changeme}\startupscript.bat"

:: Your personal Startup folder (no admin needed)
set "startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: Shortcut name
set "shortcut=%startup%\LIVE Earnings.lnk"

echo Creating shortcut...

powershell -command ^
 "$ws = New-Object -ComObject WScript.Shell;" ^
 "$s = $ws.CreateShortcut('%shortcut%');" ^
 "$s.TargetPath = '%program%';" ^
 "$s.Save()"

echo Done.
echo Shortcut created at:
echo %shortcut%

pause
