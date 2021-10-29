programa{

	//	Por Gabriel Souza da Silva
	//  Turma 921 - Informática Vespertino 1º ano
 	//	25/09/2021

	//	Comentário do Tutor, Guilherme:
	//		"Muito bom! O ótima organização, identação e simplicidade :)"

	inclua biblioteca Util --> u
	inteiro N, valor, soma, imp_par
	funcao inicio(){
		cadeia nome
		inteiro jogarNovamente=1
		escreva("Olá! Bem vindo ao game do ímpar ou par!")
		escreva("\n\nPrimeiramente, infome o seu nome: ")
		leia(nome)
		faca{
			limpa()
			apostador(nome)
			meuValor()
			decisao(nome)

			escreva("\nDeseja jogar novamente? \n 1 - Sim \n 2 - Não")
			leia(jogarNovamente)
			
		}enquanto(jogarNovamente == 1)
			
	}
	
	funcao apostador(cadeia nome){
		
		faca{
			escreva("(1) Ímpar \t(2). Par")
			escreva("\n\n",nome,", escolha entre um dos dois: ")
			leia(imp_par)

			se(nao(imp_par == 1 ou imp_par == 2)){
				escreva("\nNúmero Inválido! Insira um número válido!\n\n")
			}
		}enquanto(nao(imp_par == 1 ou imp_par == 2))

			limpa()
			escolha(imp_par){
				caso 1:
					escreva("Você escolheu Ímpar, fiquei com par! Agora, informe aqui o número que você irá apostar: ")
					
					escreva("\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
					pare
				caso 2:
					escreva("Você escolheu Par!Agora, informe aqui o número que você irá apostar: ")
				
					escreva("\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
					pare
				caso contrario:
					escreva("Número Inválido! Informe um número válido!")
		}
			leia(N)
			escreva("Seu valor escolhido foi ", N,"!")
					
					
	}
		
	funcao meuValor(){
		escreva("\nO valor que escolhi foi...")
		valor = u.sorteia(1, 10)	
		
		escreva("\nO meu valor escolhido foi ", valor )
		escreva("\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			
	}
	
	funcao decisao(cadeia nome){
		inteiro impPar
		impPar = 0
		soma = N + valor
		
		se(soma % 2 == 0){
			impPar = 2
			escreva("\nO VALOR DEU PAR!")
		}
		senao{
			impPar = 1
			escreva("\nO VALOR DEU ÍMPAR!")
		}
		
		se(imp_par == impPar){
			escreva(nome,", VOCÊ GANHOU!")
		}
		senao{
			escreva("EU GANHEI!")
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 104; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 3, 12, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */