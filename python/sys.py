#!/usr/bin/python
#import sys #trabalhar com argumentos, modulos do sistema
#if len(sys.argv) <= 2:
#	print "Modo de uso: sys.py 10.0.0.1 80"
#else:
#	print "Varrendo o host: ",sys.argv[1],"na porta",sys.argv[2]



#import os #comandos do sistema operacional
#print "verificando portas abertas"
#os.system("netstat -nlpt")


#loop
for ip in range(1,255):
	print "Varrendo IP: 192.168.0.%s" %ip
