$global:ProgressPreference = 'SilentlyContinue'

$BaseDir = $PSScriptRoot
$BepInExDir = "$BaseDir\BepInEx"
$ModsDownloadFile = "$BaseDir\Mods.zip"
$ModsDownloadUrl = "https://codeload.github.com/welles/lethal-company-mods/zip/refs/heads/main"
$ModsExtractDir = "$BaseDir\Mods"

Write-Host "Erkenne Installionsverzeichnis... " -NoNewline

if (!(Test-Path "$BaseDir\Lethal Company.exe"))
{
    Write-Host
    Write-Host "Lethal Company nicht gefunden! Lege diese Skriptdatei in den Ordner neben `"Lethal Company.exe`" und probiere es erneut!" -ForegroundColor Red
    Pause
    Exit
}

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Entferne installierte Mods... " -NoNewline

If (Test-Path "$BepInExDir")
{
    Remove-Item "$BepInExDir" -Recurse
}

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Bereinige Download-Cache... " -NoNewline

If (Test-Path "$ModsDownloadFile")
{
    Remove-Item "$ModsDownloadFile"
}

If (Test-Path "$ModsExtractDir")
{
    Remove-Item "$ModsExtractDir" -Recurse
}

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Lade aktuelle Mod-Liste herunter... " -NoNewline

Invoke-WebRequest $ModsDownloadUrl -OutFile "$ModsDownloadFile"

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Extrahiere Archivdatei... " -NoNewline

Expand-Archive "$ModsDownloadFile" -DestinationPath "$ModsExtractDir"

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Kopiere Mod-Dateien in das Spielverzeichnis... " -NoNewline

Copy-Item "$ModsExtractDir\lethal-company-mods-main\*" -Destination "$BaseDir" -Recurse -Force

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Bereinige Download-Cache... " -NoNewline

If (Test-Path "$ModsDownloadFile")
{
    Remove-Item "$ModsDownloadFile"
}

If (Test-Path "$ModsExtractDir")
{
    Remove-Item "$ModsExtractDir" -Recurse
}

Write-Host "[OK]" -ForegroundColor Green

Write-Host "Mods erfolgreich installiert! Beende Konsolenfenster..." -ForegroundColor Green

Start-Sleep -Seconds 5
