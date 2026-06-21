# Comandos básicos de diagnóstico no Windows

## Informações de rede

```bat
ipconfig
ipconfig /all
```

Mostra informações de IP, gateway, DNS e adaptadores de rede.

## Teste de conectividade

```bat
ping 8.8.8.8
ping google.com
```

Ajuda a verificar se há conexão com a internet e se a resolução DNS está funcionando.

## Rota até destino

```bat
tracert google.com
```

Mostra o caminho percorrido até um destino na rede.

## Teste de DNS

```bat
nslookup google.com
```

Ajuda a verificar se o DNS está respondendo corretamente.

## Listar processos

```powershell
Get-Process
```

Lista processos em execução.

## Listar serviços

```powershell
Get-Service
```

Lista serviços do Windows e seus status.

## Verificar espaço em disco

```powershell
Get-PSDrive
```

Mostra unidades e espaço disponível.

## Informações do computador

```powershell
Get-ComputerInfo
```

Mostra informações do sistema operacional e hardware.
