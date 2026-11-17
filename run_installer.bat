@echo off
setlocal EnableDelayedExpansion

:: ==============================================================================
:: VS Code Extension Installer (Batch Wrapper for PowerShell)
:: ==============================================================================
color 0B
title VS Code Extension Installer

echo ==============================================================================
echo  VS Code Extension Installer Launcher
echo ==============================================================================
echo.

:: 1. Check if the PowerShell script exists in the same folder
set "PS_SCRIPT=%~dp0install.ps1"
if not exist "%PS_SCRIPT%" (
    color 0C
    echo [ERROR] The required PowerShell script 'install.ps1' was not found!
    echo Please make sure both 'install.bat' and 'install.ps1' are in the same folder.
    echo.
    pause
    exit /b 1
)

:: 2. Check for Administrator privileges
echo Checking for Administrator privileges...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [SUCCESS] Running with Administrator privileges.
) else (
    echo [INFO] Administrator privileges not detected.
    echo The script will attempt to bypass the execution policy for this session.
)
echo.
echo Launching PowerShell Script...
echo ==============================================================================
echo.

:: 3. Run the PowerShell script with Execution Policy Bypass
PowerShell -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%"

:: 4. Keep the window open after the PowerShell script finishes
echo.
echo ==============================================================================
echo  Task Completed. Press any key to exit...
echo ==============================================================================
pause >nul
