def escolher_listaPortas():
	portas_top10 = [21,22,23,25,80,110,139,443,445,3389]
	portas_top20 = [135,139,143,443,445,993,995,1723,3306,3389,5900,8080]
	portas_top50 = [3389,5060,5666,5900,6001,8000,8008,8080,8443,8888,10000,32768,49152,49154]

	print ("\nSelecione uma lista de portas: ")
	print ("1 - lista top 10")
	print ("2 - lista top 20")
	print ("3 - lista top 50")
	escolha = input(">>>")

	lista_escolhida = []

	if (escolha == '1'):
		lista_escolhida = portas_top10
		return lista_escolhida
	if (escolha == '2'):
		lista_escolhida = portas_top20
		return lista_escolhida
	if (escolha == '3'):
		lista_escolhida = portas_top50
		return lista_escolhida
