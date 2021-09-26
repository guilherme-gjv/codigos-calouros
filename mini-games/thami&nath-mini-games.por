programa
{

	//	Por Thamiris de Souza Santos, Náthally Alves da Silva Braz
	//  Turma 921 - Informática Vespertino 1º ano
 	//	25/09/2021

	//	Comentário do Tutor, Guilherme:
	//		"Impecável, trabalho incrível e completo, também me surpreendeu o número de mini-games, 
	//  fizeram três quando foi requisitado apenas um. "


	inclua biblioteca Graficos--> g
	inclua biblioteca Util --> u
    inteiro acesso, pont=0
    inteiro resposta
    inteiro resul
    inteiro num[3]
    inteiro i
    real soma=0.0, subt=0.0, mult=0.0, div=0.0, pro
    inteiro im_par, numero, m_num, somap=0, resultado
    cadeia nome
    
    funcao inicio()
    {    
        
        introducao()
        apresentacao ()
        
    }

    funcao introducao(){
    	para (i=1;i<=100;i++){
        escreva("\n",i,"% ")
	   Util.aguarde(10)
	   escreva(".")
	   Util.aguarde(10)
	   escreva(".")
	   Util.aguarde(10)
	   escreva(".\n")
	   Util.aguarde(10)
	   limpa()
    	}
	   escreva("\n\nCarregamento finalizado!\n")

	escreva("\n---------------------------------------------------------------------------\n")
	   
	   escreva("\nEsse programa foi criado com o intuito de te tirar do tédio. Divirta-se. \n")
        escreva("\nAntes de tudo, como gostaria de ser chamado(a)? \n")
        escreva("Usuário:")
        leia (nome)
        limpa()
        escreva("\nOlá, ", nome, ". Seja bem vindo(a)!")
        
    }
    funcao apresentacao(){
   
        escreva ("\nQue jogo você gostaria de acessar? \n")
        escreva ("\n1. Ímpar ou Par;")
        escreva ("\n2. Jogo Matemático;")
        escreva ("\n3. Jogo da velha;")
        escreva ("\n4. Sair.\n")
        leia (acesso)
        escreva("\n---------------------------------------------------------------------------\n")
        limpa()
        desenvolvimento ()
        
	}
		
	funcao desenvolvimento(){

          se (acesso == 1){
            imp_par()
            finalizacao()
          }
		se (acesso == 2){
            matmat()
            finalizacao()
		}
		se (acesso == 3){
    		  velha()
    		  finalizacao()
          }
          se (acesso == 4){
          sair()
	}
	}
	funcao imp_par(){
		escreva ("\nVocê escolheu o jogo de ímpar ou par!\n")
            escreva ("\n---------------------------------------------------------------------------\n")
            escreva ("\nSeja bem vindo ao jogo do par ou ímpar!")
            escreva ("\nBoa sorte!")
            escreva ("\nAntes de tudo, você escolhe par ou ímpar?")
            escreva ("\n1. Ímpar")
            escreva ("\n2. Par \n")
            leia (im_par)
            escreva ("\n\nÓtima escolha. \nAgora digite um número para jogarmos: ")
            leia (numero)
            
            m_num = sorteia (1,100)
            
            escreva ("\nO número sorteado para mim foi: ", m_num)
            
            somap = numero + m_num

              se (somap%2==0){
                 resultado = 2 
                 escreva ("\nO resultado foi par.")
              
              }senao{
                resultado = 1
                escreva ("\nO resultado foi ímpar.")
             }

            se (im_par == resultado){
               escreva ("\nObaa!!! Você ganhou. PARABÉNS!")
               pont++

            }senao{
               escreva("\nQue pena. Não foi dessa vez.")
               escreva("\n---------------------------------------------------------------------------\n")
            }
            finalizacao()
            limpa()
           
	   }
	funcao matmat(){
		escreva ("\nVocê escolheu o jogo matemático!\n")
        escreva("\n---------------------------------------------------------------------------\n")
		escreva("Vamos resolver alguns problemas matemáticos?\n-Digite 1 para começar;\n-Digite 2 para sair.")
		escreva("\n---------------------------------------------------------------------------\n")
		escreva("Resposta:")
		leia(i)
		
		se (i==1){
		escreva ("\nVocê deverá escolher uma operação e digitar o resultado das continhas.")
		escreva("\n0.1-Soma\n0.2-Subtração\n0.3-Multiplicação\n0.4-Divisão\n")
		escreva("\n---------------------------------------------------------------------------\n")
		escreva("Resposta:")
		leia(pro)
			para (i=1 ; i<=2 ; i++){
			num[i] = sorteia(1,10)
			
			se (pro==0.1){
				escreva (num[1]," + ",num[2]," é: ")
				leia(resul)
				soma = num[1] + num[2]
				se (resul==soma){
					escreva("Aeeeeh, você acertou. O resultado é:", soma, "\n")
					pont++
				}senao{ 
					escreva("Que pena, você errou, mas terá mais sorte da próxima vez. O resultado é: ", soma, "\n")
				}
			}
			se (pro==0.2){
				subt = num[1] - num[2]
				escreva (num[1]," - ",num[2]," é:")
				leia(resul)
				se (resul==subt){
					escreva("Aeeeeh, você acertou. O resultado é:", subt, "\n")
					pont++
				}senao{ 
					escreva("Que pena, você errou, mas terá mais sorte da próxima vez. O resultado é:", subt, "\n")
				}
			}
			se (pro==0.3){
				mult = num[1] * num[2]
				escreva (num[1]," * ",num[2]," é: ")
				leia(resul)
				se (resul==mult){
					escreva("Aeeeeh, você acertou. O resultado é:", mult, "\n")
					pont++
				}senao{ 
					escreva("Que pena, você errou, mas terá mais sorte da próxima vez. O resultado é:", mult, "\n")
				}
			}
			se (pro==0.4){
				se (num[2]==0){
					escreva ("\nO divisor sorteado é 0, não é possível dividir por 0.\n ")
				}senao{
				div = num[1] / num[2]
				escreva (num[1]," / ",num[2]," é:")
				leia(resul)
				se (resul==div){
					escreva("Aeeeeh, você acertou. O resultado é (deve ser inteiro):", div, "\n")
					pont++
				}senao{ 
					escreva("Que pena, você errou, mas terá mais sorte da próxima vez. O resultado é:", div, "\n")
				}
			}
			}
			}
			
		       }senao{
					escreva("Tudo bem. Entendo que não queira jogar comigo. Até a próxima, amigão!")
					limpa()
					apresentacao()
		       }
	}
	funcao velha(){
		caracter jogo[3][3]
    	inteiro l, c, linha=-1, coluna=-1, jog, ganhou, jogadas, opcao
    
		escreva ("\nVocê escolheu o jogo da velha!\n")
		escreva("\n---------------------------------------------------------------------------\n")
		escreva("Seja bem-vindo!\nAliás, ótima opção!\nBoa sorte!\n")
		
		faca{
		jog = 1
		ganhou = 0
		jogadas = 0
		
		para(l = 0; l < 3; l++){
			para(c = 0; c < 3; c++)
			jogo[l][c] = ' '
		}
	
		faca{
		
			escreva("\n\n 0    1    2\n\n")
			para(l = 0; l < 3; l++){
			para(c = 0; c < 3; c++){
				escreva(" ", jogo[l][c])
				se(c < 2)
				escreva(" | ")
				se(c == 2)
				escreva("  ", l)
			}
			se(l < 2)
				escreva("\n __________\n\n")
			
			}
		

			faca{
				faca{
					se (jog==1){
						escreva("\n\nJogador(a) ", nome, ", sua vez. Digite linha e coluna (nessa ordem). ")
						leia(linha)
						leia (coluna)
					}
					senao{
						escreva("\nComputador, é sua vez.")
						linha=sorteia(0,2)
						coluna=sorteia(0,2)
					}
				}enquanto(linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
			}enquanto(jogo[linha][coluna] != ' ')
			
			se(jog == 1){
				jogo[linha][coluna] = '0'
				jog++
				}senao{
					jogo[linha][coluna] = 'X'
					jog = 1
			}
			jogadas++
			
			para(l = 0; l < 3; l++){
				se(jogo[l][0] == '0' e jogo[l][1] == '0' e jogo[l][2] == '0')
					ganhou = 1
			}
		
			para(l = 0; l < 3; l++){
				se(jogo[l][0] == 'X' e jogo[l][1] == 'X' e jogo[l][2] == 'X')
					ganhou = 2
			}
			

			para(c = 0; c < 3; c++){
				se(jogo[0][c] == '0' e jogo[1][c] == '0' e jogo[2][c] == '0')
					ganhou = 1
			}
		
			para(c = 0; c < 3; c++){
				se(jogo[0][c] == 'X' e jogo[1][c] == 'X' e jogo[2][c] == 'X')
					ganhou = 2
			}
		
			se(jogo[0][0] == '0' e jogo[1][1] == '0' e jogo[2][2] == '0')
				ganhou = 1
		
			se(jogo[0][0] == 'X' e jogo[1][1] == 'X' e jogo[2][2] == 'X')
				ganhou = 2
			
			se(jogo[0][2] == '0' e jogo[1][1] == '0' e jogo[2][0] == '0')
				ganhou = 1  
		
			se(jogo[0][2] == 'X' e jogo[1][1] == 'X' e jogo[2][0] == 'X')
				ganhou = 2
		}enquanto(ganhou == 0 e jogadas < 9)
	
		escreva("\n\n 0    1    2\n\n")
			para(l = 0; l < 3; l++){
			para(c = 0; c < 3; c++){
				escreva(" ", jogo[l][c])
				se(c < 2)
				escreva(" | ")
				se(c == 2)
				escreva("  ", l)
			}
			se(l < 2)
				escreva("\n __________\n\n")
		}
	
		se(ganhou == 1)
			escreva("\n\nParabéns Jogador(a) ", nome,". Você ganhou!\n\n")
			pont++
		se(ganhou == 2)
			escreva("\n\n\tQue pena, não foi dessa vez...\n\n")
	
		escreva("Digite 1 para jogar novamente: \n")
		leia(opcao)
		}enquanto(opcao == 1)
		limpa()
}
		funcao finalizacao(){
			escreva("\n---------------------------------------------------------------------------\n")
				escreva ("\n Voltando ao menu...")
				 	apresentacao()
				}
		funcao sair(){
			escreva ("\nVocê escolheu sair!\n")
			escreva ("\nTudo bem, foi muito bom jogar com você.")	
			escreva("\nSua pontuação foi: ", pont,"\n")
				 }
}