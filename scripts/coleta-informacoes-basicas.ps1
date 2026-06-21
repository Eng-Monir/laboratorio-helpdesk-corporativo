# Coleta informações básicas úteis para suporte técnico

Write-Host "=== Informacoes do computador ==="
Write-Host "Computador: $env:COMPUTERNAME"
Write-Host "Usuario: $env:USERNAME"

Write-Host "\n=== Sistema Operacional ==="
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, OSArchitecture

Write-Host "\n=== Processador ==="
Get-CimInstance Win32_Processor | Select-Object Name

Write-Host "\n=== Memoria ==="
Get-CimInstance Win32_ComputerSystem | Select-Object @{Name="MemoriaGB";Expression={[math]::Round($_.TotalPhysicalMemory / 1GB, 2)}}

Write-Host "\n=== Rede ==="
Get-NetIPConfiguration
