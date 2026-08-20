$ErrorActionPreference = "Stop"

$setvars = "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"
if (-not (Test-Path $setvars)) {
 throw "No se encontró Intel oneAPI setvars.bat en: $setvars"
}

$cmd = "`"$setvars`" intel64 >nul 2>&1 && set"
cmd /c $cmd | ForEach-Object {
 if ($_ -match "^(.*?)=(.*)$") {
 [System.Environment]::SetEnvironmentVariable($matches[1], $matches[2])
 }
}

$compiler = $null
if (Get-Command ifx -ErrorAction SilentlyContinue) {
 $compiler = "ifx"
} elseif (Get-Command ifort -ErrorAction SilentlyContinue) {
 $compiler = "ifort"
} else {
 throw "No se encontró ifx ni ifort después de cargar Intel oneAPI."
}

New-Item -ItemType Directory -Force -Path build | Out-Null

$src = Get-ChildItem -Filter *.f90 | Sort-Object Name
if ($src.Count -eq 0) {
 throw "No se encontraron archivos .f90 en la carpeta."
}

Write-Host "Compilador detectado: $compiler"
Write-Host "Fuentes: $($src.Name -join ', ')"

& $compiler $src.FullName /exe:build\programa.exe
if ($LASTEXITCODE -ne 0) {
 throw "La compilación falló."
}

Write-Host "Compilación correcta: build\programa.exe"
