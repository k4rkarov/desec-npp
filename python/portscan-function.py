#!/usr/bin/python
import socket

print ("Learning Python - DESEC")

ip = input("Insira o IP do alvo: ")

def port_scan(alvo):
	for porta in range(1,100):
		sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		socket.setdefaulttimeout(0.5)
		if (sock.connect_ex((alvo,porta)) == 0):
			print ("[+] Porta TCP",porta,"[ABERTA]")
			sock.close()
port_scan(ip)
