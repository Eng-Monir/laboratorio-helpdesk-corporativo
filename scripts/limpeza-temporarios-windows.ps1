# Script simples para limpeza de arquivos temporários do usuário
# Use apenas em ambiente de teste ou com autorização.

$tempPath = $env:TEMP

Write-Host "Limpando arquivos temporarios em: $tempPath"

Get-ChildItem -Path $tempPath -Recurse -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "Limpeza concluida."
