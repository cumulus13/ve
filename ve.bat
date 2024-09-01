@echo off
rem author Hadi Cahyadi <cumulus13@gmail.com>

if "%1"=="" goto usage
if "%1"=="uninstall" goto remove
if "%1"=="remove" goto remove
if "%1"=="deactive" goto deactivate
if "%1"=="deactivate" goto deactivate
if "%1"=="de" goto deactivate
if "%1"=="l" goto list
if "%1"=="-l" goto list
if "%1"=="list" goto list
if "%1"=="install" goto install
if "%1"=="-i" goto install
if "%1"=="i" goto install

set NAME=%1
if not exist c:\VENV (
    mkdir c:\VENV
)
set DIR=c:\VENV\%NAME%-env

if exist %DIR% (
    rem echo active "%NAME%" ...
    echo ^[96mactive "%NAME%" ...^[0m
    
    call "%DIR%\Scripts\activate.bat"
    
) else (
    rem echo create "%NAME%" ...
    echo ^[93mcreate "%NAME%" ...^[0m
    virtualenv.exe %DIR%
    
    call %DIR%\Scripts\activate.bat
)
goto end

:install
if not exist c:\VENV (
    mkdir c:\VENV
)
goto end

:deactivate
call %DIR%\Scripts\deactivate.bat
goto end

:remove
set NAME=%2
set DIR=c:\VENV\%NAME%-env
rem echo remove "%NAME%" ...
echo ^[91mremove "%NAME%" ...^[0m
if exist %DIR% (
    rem echo deactive "%NAME%" ...
    echo ^[93mdeactive "%NAME%" ...^[0m
    
    call %DIR%\Scripts\deactivate.bat
    
    rmdir /s /q %DIR%
)
goto end

:list
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /b c:\VENV\*-env') do (
    set "envName=%%i"
    set "envName=!envName:-env=!"
    echo !envName!
)
endlocal
goto end

:usage
echo.
echo ^[93mPython Virtual Environment^[0m
echo.
echo ^[93musage:^[0m %0 ^[91m[remove/uninstall/deactivate/-l/l/list]^[0m ^[96m[NAME]^[0m
goto end

:end
