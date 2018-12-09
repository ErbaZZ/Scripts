:: Process Killer/Shutdown Timer v1.0

@echo off
set sd=N
set /p sd="Shutdown? (Y/[N]): "

if /i "%sd%" neq "Y" goto NOSHUT
set /p m="Minutes until shutting down: "
set /a s="m * 60"
echo Shutting down in %m% minutes (%s% seconds)
timeout /t %s% /nobreak
shutdown -s -t 0

:NOSHUT
set /p m="Minutes until killing Nox: "
set /a s="m * 60"
echo Killing Nox in %m% minutes (%s% seconds)
timeout /t %s% /nobreak
taskkill /f /t /im Nox.exe

pause