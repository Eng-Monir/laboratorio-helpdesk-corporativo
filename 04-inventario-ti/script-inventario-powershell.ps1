# Script simples para coletar informações básicas do computador
# Objetivo: apoiar inventário de ativos de TI em ambiente de suporte técnico.

$computador = $env:COMPUTERNAME
$usuario = $env:USERNAME
$sistema = Get-CimInstance Win32_OperatingSystem
$processador = Get-CimInstance Win32_Processor
$memoria = Get-CimInstance Win32_ComputerSystem
$disco = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"

$inventario = [PSCustomObject]@{
    Computador = $computador
    Usuario = $usuario
    SistemaOperacional = $sistema.Caption
    Versao = $sistema.Version
    Processador = $processador.Name
    MemoriaGB = [math]::Round($memoria.TotalPhysicalMemory / 1GB, 2)
    DiscoLivreGB = [math]::Round($disco.FreeSpace / 1GB, 2)
    DiscoTotalGB = [math]::Round($disco.Size / 1GB, 2)
    DataColeta = Get-Date -Format "dd/MM/yyyy HH:mm"
}

$inventario | Format-List
$inventario | Export-Csv -Path "inventario-ti.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Inventario gerado com sucesso: inventario-ti.csv"
