#!/usr/bin/python
import socket,sys

ip = sys.argv[1]
porta = int(sys.argv[2])

#pedindo pro usuario digitar o IP e a porta
#ip = raw_input("Digite o IP:")
#porta = input("Digite a porta:")

meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
res = meusocket.connect_ex((ip,porta)) #connect_ex retorna 0 se funcionou corretamente

if (res == 0):
	print "PORTA ABERTA"
else:
	print "PORTA FECHADA"