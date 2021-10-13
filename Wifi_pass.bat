cls
@echo off
setlocal enabledelayedexpansion
for /f "tokens=2delims=:" %%a in ('netsh wlan show profile ^|find /i "All User Profile"') do (
    set "ssid=%%~a"
    call :getpwd %%ssid:~1%%
)
pause
:getpwd
for /f "tokens=2delims=:" %%i in ('netsh wlan show profile name^="%*" key^=clear ^| findstr /C:"Key Content"') do echo ssid: %* password: %%i