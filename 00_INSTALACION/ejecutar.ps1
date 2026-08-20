$ErrorActionPreference = "Stop"
if (-not (Test-Path ".\build\programa.exe")) {
 Write-Host "No existe build\programa.exe. Ejecutando compilar.ps1..."
 .\compilar.ps1
}
.\build\programa.exe
