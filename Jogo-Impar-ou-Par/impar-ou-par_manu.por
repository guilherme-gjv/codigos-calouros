programa
{

	//	Por Emanuely Tauany da Silva Ferreira
	//  Turma 911 - Informática Matutino 1º ano
 	//	25/09/2021

	//	Comentário do Tutor - Guilherme:
	//		"Um código minimalista, arrumado e objetivo, gostei porque é curto, 
	//   atende o objetivo e ficou bonito, parabéns hehehe"

	inclua biblioteca  Util --> u
	funcao inicio()
	{
		inteiro p=0, j2, resp, result=0, numero, imp=0
          cadeia escolher
          
		
		escreva("	Bem-Vindo ao jogo do Par ou Ímpar:O que você deseja fazer?")
		escreva("\n [1]Jogar [2]Sair")
		leia(resp)
		enquanto (resp==1){ 
		  j2=u.sorteia(0, 100)
		    escreva("\nEscolha: digite I para ÍMPAR ou P para PAR para começarmos a jogar:")
		       leia(escolher)
		 escreva("Digite um número:")
		     leia(numero)
		      result=j2+numero


		escreva("Escolhi o número ", j2,". Somado ao ", numero, " que você escolheu, temos ",result, ".")
		      
		se((result%2==0) e (escolher=="P")){
		    escreva("Parabéns, você ganhou!")
		}senao{
		 se((result%2!=0) e (escolher=="I")){
		    escreva("\nParabéns, você ganhou!")
		}senao{
		    escreva("\nQue pena, você perdeu...")		
		}
		
		}
	     escreva("\nDeseja continuar jogando?")
	     escreva("\n [1]Jogar [2]Sair")
	     leia(resp)
		
	
		}
			
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 976; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */