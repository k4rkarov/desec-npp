#!/bin/bash
#meu segundo script

echo "Digite o IP:"
read ip
echo "efetuando PING no Host:" $ip
ping -c1 $ip 

echo "Digite o servico a ser iniciado:"
read var1
service $var1 restart
echo "Servicos ativos:"
ps aux | grep $var1
echo "Portas abertas"
netstat -nlpt
