#!/bin/bash
echo "Qual a cor do semaforo?"
read cor

if [ "$cor" == "verde" ]
then
	echo "siga em frente"

elif [ "$cor" == "amarelo" ]
then
	echo "aguarde"

else
	echo "pare!"
fi
