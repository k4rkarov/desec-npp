#!/usr/bin/python
import socket

ip = raw_input("Digite o IP:")
porta = input("Digite a porta:")

meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
res = meusocket.connect_ex((ip,porta)) 
banner = meusocket.recv(1024)
print banner
