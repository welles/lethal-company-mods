@echo off

powershell.exe -ExecutionPolicy Bypass -NoProfile -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/welles/lethal-company-mods/main/Update-Mods.ps1' -OutFile '%~dp0\Update-Mods.ps1'"

powershell.exe -ExecutionPolicy Bypass -NoProfile -File "%~dp0\Update-Mods.ps1"

pause