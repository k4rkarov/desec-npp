#!/bin/bash
echo "Qual a sua idade?"
read idade

if [ "$idade" -ge "18" ]
then
	echo "PODE DIRIGIR"
else
	echo "NAO PODE DIRIGIR"
fi


echo "O cliente autorizou o pentest?"
echo "1 - sim"
echo "2 - nao"
read resp
case $resp in
"1")
	echo "PODE INICIAR O PENTEST"
;;
"2")
	echo "PENTEST PENDENTE! AGUARDE O CLIENTE AUTORIZAR"
;;
esac
