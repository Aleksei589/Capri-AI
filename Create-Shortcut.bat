@echo off
cd /d "%~dp0"
rem Puts a "Capri" icon on your Desktop that starts her (it starts minimized, nothing to keep open).
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut([Environment]::GetFolderPath('Desktop')+'\Capri.lnk'); $s.TargetPath='%~dp0Capri.bat'; $s.WorkingDirectory='%~dp0'; $s.IconLocation='%~dp0assets\icons\capri.ico'; $s.WindowStyle=7; $s.Description='Capri'; $s.Save()"
if errorlevel 1 (echo Could not create the shortcut.) else (echo Done: a Capri icon is now on your Desktop.)
pause
