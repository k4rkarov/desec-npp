//Meu primeiro programa em C
#include <stdio.h>

int main(void){
  int porta;
  char ip[16];

	printf("DESEC SECURITY\n");
	printf("Digite o IP \n");
//	scanf("%s",&ip); nao eh seguro, fgets eh mais seguro que scanf
	fgets(ip,10,stdin);
//	printf("Digite a porta \n");
//	scanf("%i",&porta);
	printf("Varrendo host %s na porta %i \n",ip,porta);

return 0;
}
