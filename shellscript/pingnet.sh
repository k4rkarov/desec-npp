#!/bin/bash
if [ "$1" == "" ]
then
	echo "DESEC SECURITY - PING SWEEP"
	echo "Modo de uso: $0 REDE"
	echo "Exemplo: $0 192.168.0"
else
for host in {1..254};
do
ping -c1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4; #64 bytes significa que teve resposta do ping

#outra maneira de fazer isso eh:
#ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'; cifrao indica final do arquivo

done
fi
