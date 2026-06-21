# Checklist de diagnóstico de VPN

## Problema relatado

Usuário informa que não consegue conectar à VPN corporativa.

## Verificações iniciais

- O usuário tem internet funcionando?
- O Wi-Fi ou cabo está conectado?
- O usuário está usando as credenciais corretas?
- A senha está expirada?
- Há mensagem de erro?
- O cliente VPN está instalado?
- O problema ocorre com outros usuários?
- Há instabilidade no serviço?

## Testes básicos

```bat
ipconfig
ping 8.8.8.8
ping google.com
nslookup google.com
```

## Possíveis causas

- Falha de internet local.
- Credencial incorreta.
- Senha expirada.
- Cliente VPN desatualizado.
- Bloqueio por firewall.
- Instabilidade do servidor VPN.
- Configuração incorreta.

## Encaminhamento

Se o problema não for resolvido no N1, registrar evidências e escalar para equipe de infraestrutura/redes.
