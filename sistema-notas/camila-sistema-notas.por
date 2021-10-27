programa{

	//	Por Camila Lima da Silva
	//  Turma 921 - Informática Vespertino
 	//	25/09/2021

	//	Comentário do Tutor, Guilherme:
	//		"Muito completo. Ótimo uso de arrays(vetores/matrizes). A lógica desse 
	//	sistema vai ser	muito útil no 2º ano com a matéria de Programação Orientada a Objeto."

  inclua biblioteca Util --> u
  	real NA921[36][4]
  	
	funcao inicio(){
	
	 	menu()
	
	}
	funcao menu(){
		inteiro decisao = 0
		limpa()
		enquanto(decisao != 4){
			
			escreva("\nBem vindo ao Sistema de Alunos da turma 921!")
			escreva("\nCaso queira:")
			escreva("\n1 - Registar Notas\n2 - Ver Notas\n3 - Ver Médias\n4 - Sair\n")
			escreva("Qual opção você deseja? ")
			leia(decisao)

			escolha(decisao){
				caso 1:
					RegistrarNotas()
					pare
				caso 2:
					VerNotas()
					pare
				caso 3:
					VerMedia()
					pare
				caso 4:
					escreva("\n\nSaindo do sistema...\n")
					pare
			}
		}
	}

	funcao RegistrarNotas(){
		inteiro op = 0
		inteiro  x, y, n, i, nota
		limpa()
		
         escreva("\nO que você deseja?")
		 escreva("\n1. Registar as notas dos 4 bimestres de todos os alunos\n2. Registrar as notas dos 4 bimestres de um aluno em específico\n")
		 escreva("Digite...")
		 leia(op)
		 
		  se ( op == 1){
		  	 para ( y = 0; y <= 3; y++){
		  	  para ( x = 0; x <= 35; x++){
		  	   escreva("Digite a nota do ", y+1, "° bimestre do ", x+1, "° aluno da chamada: ")
		  	   leia(NA921[x][y])
		  	  }
		  	 }
		   }
		  se ( op == 2 ){
		  	escreva("\nDigite o número do aluno na chamada: ")
			leia(n)
		     para ( y = 0; y <= 3; y++ ){
			   escreva("Digite a nota do ", y+1, "° bimestre do ", n, "° aluno da chamada: ")
			   leia(NA921[n-1][y])
		  	 }
	      }
	}
	
	funcao VerNotas(){
		inteiro op = 0
		inteiro x, y, n, i
		limpa()
		
		escreva("\nO que você deseja?")
		escreva("\n1. Ver as notas dos 4 bimestres de todos os alunos\n2. Ver as notas dos 4 bimestres de um aluno em específico\n")
	    escreva("Digite...")
		leia(op)
		
		 se ( op == 1 ){
		   para ( x = 0; x <= 3; x++){
		  	 para ( y = 0; y <= 35; y++){
		  	   escreva("\nA nota do ", x+1, "° bimestre do ", y+1, "° aluno da chamada é: ", NA921[y][x])
		  	   
		     }
		   }
		 }
		 se ( op == 2 ){
           escreva("\nDigite o número do aluno na chamada: ")
		   leia(n)
			 para ( i = 0; i <= 3; i++){
		 	   escreva("\nA nota do ", i+1, "° biemste do aluno é: ", NA921[n-1][i])	
	   	  }
	   }
	    u.aguarde(3000)
	}
	
	funcao VerMedia(){
		real soma_notas[36], media[36]
		inteiro op = 0
		inteiro x, n, i
		limpa()
		
	    escreva("\nO que você deseja?")
		escreva("\n1. Ver as Médias de todos os alunos\n2. Ver a Média de um aluno em específico\n")
	    escreva("Digite...")
		leia(op)

		para ( i = 0; i <= 35; i++ ){
		  para ( x = 0; x <= 3; x++){
		   soma_notas[i] = soma_notas[i] + NA921[i][x]
		  }
		}
        para ( i = 0; i <= 35; i++ ){
		 media[i] = soma_notas[i]/4
		}
		
        se ( op == 1 ){
		  para ( i = 0; i <= 35; i++ ){
	      escreva("\nA Média do ", i+1, "° aluno da chamada é: ", media[i])
		  }
		}
		
         se ( op == 2 ){
           escreva("\nDigite o número do aluno na chamada: ")
		   leia(n)
		    n = n -1
	        para ( i = 0; i < 1; i++ ){
		     escreva("\nA Média do ", n, "° aluno da chamada é: ", media[n])	
			}
         u.aguarde(3000)	
        }
  

	}
  
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */