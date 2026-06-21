# Chamado 001 — Usuário sem internet

**Categoria:** Rede  
**Prioridade:** Média  
**Status:** Resolvido  

## Problema relatado

Usuário informou que não conseguia acessar sites e sistemas internos.

## Análise inicial

Foi verificado que o computador estava conectado ao Wi-Fi, porém não navegava corretamente.

## Procedimentos realizados

- Verificação da conexão Wi-Fi.
- Execução do comando `ipconfig`.
- Teste de conectividade com `ping 8.8.8.8`.
- Teste de DNS com `ping google.com`.
- Reinicialização do adaptador de rede.
- Limpeza do cache DNS com `ipconfig /flushdns`.

## Resultado

A conexão foi restabelecida após reinicialização do adaptador e limpeza do cache DNS.

## Aprendizado

Problemas de DNS e adaptador de rede podem causar falhas de navegação mesmo quando o Wi-Fi aparece conectado.
