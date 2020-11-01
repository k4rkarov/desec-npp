#!/usr/bin/python
import socket
import informacoes

print ("Learning Python - DESEC")

def port_scan():
	ip = input("Insira o IP do alvo: ")
	lista_portas = informacoes.escolher_listaPortas()
	print ("\nIniciando o scan no IP: ",ip)
	print ("A lista escolhida possui as portas:\n",lista_portas,"\n")
	for porta in lista_portas:
		sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(0.5)

		if (sock.connect_ex((ip,porta)) == 0):
			print ("[+] Porta TCP",porta,"[ABERTA]")
			sock.close()
port_scan()
