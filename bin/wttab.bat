@echo off

:: Check if WezTerm is installed
where wezterm >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo WezTerm is not installed. Please install it first.
    exit /b 1
)

:: Set the tab title
set "TAB_TITLE=%~1"

if "%TAB_TITLE%"=="" (
    echo Usage: %0 "Your Tab Title"
    exit /b 1
)

:: Command to set the tab title
wezterm cli set-tab-title "%TAB_TITLE%"

