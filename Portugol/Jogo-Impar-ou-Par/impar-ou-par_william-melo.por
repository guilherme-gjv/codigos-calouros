programa {
 	//	Por William Gustavo da Silva Melo
	//  Turma 911 - Informática Matutino 1º ano
 	//	22/09/2021

	//	Comentário do Tutor - Guilherme:
	//	"Ficou muito descontraído, informal e o output bem organizado hehehe "


    inclua biblioteca Util

	funcao inicio() {
	 
	inteiro decida, impar_par
	inteiro adver, number
	inteiro soma, result 
	cadeia x, F
	
	escreva("-------------------------------------------------------------------------")
	escreva("\nComo você se chama, jogador :) ? ")
	leia(x)
	
	escreva("\nEntão ",x,", seja bem vindo ao jogo do ímpar ou par.")
	escreva("\nOnde eu, willi baleinha, irei ser seu adversário, desde já...")
	escreva("\nBoa sorte!\n")
	escreva("--------------------------------------------------------------------------")
	
	escreva("\n ",x,", Você escolhe (ÍMPAR OU PAR)?\n")
	escreva("\n 1.ÍMPAR\n 2.PAR \n")
	
	escreva("\nEntão, jovem ",x,", digite aqui: ")
	leia(decida)
	
	escreva("\nvocê é lindo(a)")
	escreva("\n--------------------------------------------------------------------------\n")
	escreva("\n",x,", Faça sua aposta: ")
	leia(number)
	
	adver = sorteia(1,10)
	escreva("\nEu, willi aposto: ",adver)
	soma = adver + number
	
	se(soma%2==0){
		impar_par = 2 
		escreva("\nUuueepaa, deu par!\n")
	 
	}senao{
	 	impar_par = 1 
	 	escreva("\nUau,deu ímpar!")
	}
	se(decida == impar_par){
	 	escreva("\nParabéns, YOU WIN...FATALITY\n\n")
		escreva("\nDê seu fatality (xingamento): ")
	 	leia(F)
	   
		escreva("\nEeeiiitaaa, ",F)
		escreva("\n---------------------------------------------------------------------------")
		escreva("\nVictory!")
	 
	}senao{
	 	escreva("\nVocê é um bobão, ahahaha, trouxa...consegue perder para um computador, animal!")
	}
   }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 76; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {adver, 10, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
