@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0"

echo.
echo ====================================
echo     flash.draw - Setup & Launch
echo ====================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python from https://www.python.org
    pause
    exit /b 1
)

echo [1/2] Installing requirements...
echo.
pip install -r requirements.txt

if errorlevel 1 (
    echo ERROR: Failed to install requirements
    pause
    exit /b 1
)

echo.
echo [2/2] Launching flash.draw...
echo.

python main.py

pause
