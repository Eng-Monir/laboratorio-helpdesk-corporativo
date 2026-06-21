# Verificação simples de espaço em disco

Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" | Select-Object `
    DeviceID,
    VolumeName,
    @{Name="TamanhoGB";Expression={[math]::Round($_.Size / 1GB, 2)}},
    @{Name="LivreGB";Expression={[math]::Round($_.FreeSpace / 1GB, 2)}},
    @{Name="PercentualLivre";Expression={[math]::Round(($_.FreeSpace / $_.Size) * 100, 2)}}
