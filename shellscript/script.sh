#!/bin/bash
#meu primeiro script

echo "DESEC SECURITY" #echo exibe texto na tela
echo "Sistema ligado por: " $(uptime -p) # se voce usar o $() aparece na frente

echo "Diretorio atual: " $(pwd)
echo "User atual: " $(whoami)



#VARIAVEIS

ip=192.168.0.1
echo "Varrendo o host " $ip

#ou

echo "Digite o ip: "
read ip2
porta=80
echo "Varrendo o host $ip2 na porta $porta"

