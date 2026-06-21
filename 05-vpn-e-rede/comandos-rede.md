# Comandos básicos de rede para suporte técnico

## Ver IP da máquina

```bat
ipconfig
```

## Ver detalhes de rede

```bat
ipconfig /all
```

## Renovar IP

```bat
ipconfig /release
ipconfig /renew
```

## Limpar cache DNS

```bat
ipconfig /flushdns
```

## Testar internet por IP

```bat
ping 8.8.8.8
```

## Testar DNS

```bat
ping google.com
nslookup google.com
```

## Ver rota até destino

```bat
tracert google.com
```

## Ver conexões ativas

```bat
netstat -ano
```

## Observação

Os comandos devem ser usados apenas para diagnóstico e sempre com registro no chamado.
