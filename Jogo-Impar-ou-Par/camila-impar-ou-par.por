programa{

	//	Por Camila Lima da Silva
	//  Turma 921 - Informática Vespertino
 	//	25/09/2021

	//	Comentário do Tutor, Guilherme:
	//	Ficou muito descontraído, informal e o output bem organizado hehehe 

  inclua biblioteca Util --> u
	funcao inicio(){
	
	 	menu()
	
}
	funcao menu(){
		inteiro decisao = 0
		enquanto(decisao != 2){
		limpa()
			escreva("\nVamos jogar?")
			escreva("\n1 - SIM\n2 - NÃO\n")
			escreva("Qual opção você deseja? ")
			leia(decisao)

			escolha(decisao){
				caso 1:
					ImparOuPar()
					pare
				caso 2:
					escreva("\n\nSaindo do sistema...\n")
					pare
			}
		}
	}

	funcao ImparOuPar(){
		inteiro op = 0
		inteiro x = 0, y = 0
		limpa()
		
		escreva("Você escolhe:")
		escreva("\n1 - IMPAR\n2 - PAR\n")
		escreva("Digite... ")
		leia(op)
		escreva("Qual número de 1 a 5 você aposta? ")
		leia(x)
		
		 y = u.sorteia(1,5)
		 
		 se ( op == 1 ){
		  x = x + y
		   se ( x % 2 == 0 ){
		    escreva("Você perdeu KKKKKKK")
		   }senao{
		   	escreva("Você ganhou bb!")
		   }
		  escreva("Eu apostei ", y)
		 }
		 
		  se ( op == 2 ){
		   x = x + y
		    se ( x % 2 == 0 ){
		     escreva("Você ganhou bb!")
		    }senao{
			 escreva("Você perdeu KKKKKKK")
		    }
       	  escreva("Eu apostei ", y)
	      }
	 u.aguarde(3000)
	}
  
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1076; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */