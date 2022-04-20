programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
	
		real imc=0, peso=0,arredondar=0, idade=0, altura=0
		real Ar_I_AM=0, Ar_I_AH=0, Ar_A_AM=0, Ar_A_AH=0, Ar_P_AM=0, Ar_P_AH=0, A_AM=0, A_AH=0,I_AM=0, I_AH=0, P_AM=0,
		P_AH=0, CI_AM=0, CI_AH=0, CA_AM=0, CA_AH=0, CP_AM=0, CP_AH=0, Md_I_AM=0, Md_I_AH=0, Md_A_AM=0,	Md_A_AH=0, Md_P_AM=0,
		Md_P_AH=0 // Variais Adulto
		
		real Ar_I_JM=0, Ar_A_JM=0, Ar_P_JM=0, Ar_I_JH=0, Ar_A_JH=0, Ar_P_JH=0, A_JM=0, A_JH=0, I_JM=0, I_JH=0, P_JM=0,
		P_JH=0, CI_JM=0, CI_JH=0, CA_JM=0, CA_JH=0, CP_JM=0, CP_JH=0, Md_I_JM=0,Md_I_JH=0, Md_A_JM=0, Md_A_JH=0, Md_P_JM=0,
		Md_P_JH=0 // Variais Jovem	
			
		real Ar_I_EM=0, Ar_A_EM=0, Ar_P_EM=0, Ar_I_EH=0, Ar_A_EH=0, Ar_P_EH=0, A_EM=0, A_EH=0, I_EM=0, I_EH=0, P_EM=0,
		P_EH=0, CI_EM=0, CI_EH=0, CA_EM=0, CA_EH=0, CP_EM=0, CP_EH=0, Md_I_EM=0, Md_I_EH=0, Md_A_EM=0, Md_A_EH=0, Md_P_EM=0,
		Md_P_EH=0 // Variais Experts

		real Ar_I_XJ=0, Ar_A_XJ=0, Ar_P_XJ=0, A_XJ=0, I_XJ=0, P_XJ=0, CI_XJ=0, CA_XJ=0, CP_XJ=0, Md_I_XJ=0, Md_A_XJ=0, 
		Md_P_XJ=0 // Variais LGBTQIA+ jOVEM
		
		real Ar_I_XA=0, Ar_A_XA=0, Ar_P_XA=0, A_XA=0, I_XA=0, P_XA=0, CI_XA=0, CA_XA=0, CP_XA=0, Md_I_XA=0, Md_A_XA=0, 
		Md_P_XA=0 // Variais LGBTQIA+ ADULTO
		
		real Ar_I_XE=0, Ar_A_XE=0, Ar_P_XE=0, A_XE=0, I_XE=0, P_XE=0, CI_XE=0, CA_XE=0, CP_XE=0, Md_I_XE=0, Md_A_XE=0, 
		Md_P_XE=0// Variais LGBTQIA+ Experts
				  
		real Qtd_Entre=0, Md_A_Geral=0,Md_I_Geral=0, Md_P_Geral=0, Soma_Idade=0,Soma_Peso=0,Soma_Altura=0,
		Med_Peso=0,Med_Altura=0, Med_Idade=0, Ar_Med_Idade=0,	Ar_Med_Peso=0, Ar_Med_Altura=0,Ar_Qtd_Entre=0 // Geral 
		
		inteiro genero
		 
		cadeia nome, mensagem
 		caracter parar='S'
		
	faca{
			//ENTRADA DE DADOS
			escreva("Qual sua idade?\n")
			leia(idade)
				se (idade<18)
				{
				escreva("\nInfelizmente você não pode participar de nossa pesquisa.\n")
				
				}
				senao se (idade>99)
				{escreva("\nPor gentileza verifique a idade digitada\n")
					}
				senao{
		
				limpa()			
				escreva("Qual Seu nome?\n")
				leia(nome)
				escreva("Qual seu genero 1 Para Masculino, 2 Para feminino ou 3 Para LGBTQIA+?\n")
				leia(genero)
					enquanto (genero !=1 e genero !=2 e genero!=3)
							se (genero !=1 e genero !=2 e genero!=3)
							{
							escreva("Por gentileza Digite 1 Para Masculino 2 Para feminino ou 3 Para LGBTQIA+ \n")
							leia(genero)
							}							
				escreva("Qual seu peso?\n")
				leia(peso)
				escreva("Qual sua altura? (Em Centimetros)\n")
				leia(altura)	
			    	limpa()
			
			imc = (peso /(altura * altura)*10000)
			arredondar = mat.arredondar(imc,2)
			mensagem = " Resultado: "
			
			//SE PARA O IMC
					se(imc <18.5)
						{
							mensagem += "Seu IMC está abaixo do recomendado  procure um medico"
						}
						
					senao se(imc >24.9)
						{
							mensagem += "Seu IMC está acima do recomendado procure um medico"
						}
						
					senao
						{
							mensagem += "Parabens seu IMC está dentro do recomendado!"							
						}
				
			escreva ("Olá ",nome , mensagem, " Seu IMC é de: ", arredondar)
			escreva ("\nContinuar a pesquisa S para continuar ou N para finalizar ? (S/N) ")					
			leia (parar)
							enquanto (parar !='S' e parar !='N')
							se (parar !='S' e parar !='N')
							{
							escreva("Digite S para continuar ou N para finalizar \n")
							leia(parar)
							}
			limpa()


			//entrada de dados e calculos
					se (idade >=18 e idade <=32 e genero == 1)
					{
						I_JH = I_JH+idade
						CI_JH = CI_JH+1
						P_JH = P_JH+peso
						CP_JH = CP_JH+1
						A_JH = A_JH+altura
						CA_JH =CA_JH+1
						Md_I_JH = I_JH/CI_JH
						Md_A_JH = A_JH/CA_JH
						Md_P_JH = P_JH/CP_JH
						Ar_I_JH = mat.arredondar(Md_I_JH,2)
						Ar_A_JH = mat.arredondar(Md_A_JH,2)
						Ar_P_JH = mat.arredondar(Md_P_JH,2)

						
					}
					senao se (idade >=18 e idade <=32 e genero == 2)
						{
							I_JM = I_JM+idade
							CI_JM = CI_JM+1
							P_JM = P_JM+peso
							CP_JM = CP_JM+1
							A_JM = A_JM+altura
							CA_JM =CA_JM+1
							Md_I_JM = I_JM/CI_JM
							Md_A_JM = A_JM/CA_JM
							Md_P_JM = P_JM/CP_JM
							Ar_I_JM = mat.arredondar(Md_I_JM,2)
							Ar_A_JM = mat.arredondar(Md_A_JM,2)
							Ar_P_JM = mat.arredondar(Md_P_JM,2)
						}
					senao se (idade >=18 e idade <=32 e genero == 3)
						{
							I_XJ= I_JM+idade
							CI_XJ= CI_JM+1
							P_XJ= P_JM+peso
							CP_XJ= CP_JM+1
							A_XJ= A_JM+altura
							CA_XJ=CA_JM+1
							Md_I_XJ= I_JM/CI_JM
							Md_A_XJ= A_JM/CA_JM
							Md_P_XJ= P_JM/CP_JM
							Ar_I_XJ= mat.arredondar(Md_I_JM,2)
							Ar_A_XJ= mat.arredondar(Md_A_JM,2)
							Ar_P_XJ= mat.arredondar(Md_P_JM,2)
						}
				
					senao se (idade >=33 e idade <=61 e genero == 1)
							{
								I_AH = I_AH+idade
								CI_AH = CI_AH+1
								P_AH = P_AH+peso
								CP_AH = CP_AH+1
								A_AH = A_AH+altura
								CA_AH =CA_AH+1
								Md_I_AH = I_AH/CI_AH
								Md_A_AH = A_AH/CA_AH
								Md_P_AH = P_AH/CP_AH
								Ar_I_AH = mat.arredondar(Md_I_AH,2)
								Ar_A_AH = mat.arredondar(Md_A_AH,2)
								Ar_P_AH = mat.arredondar(Md_P_AH,2)
							}
		
					senao se (idade >=33 e idade <=61 e genero == 2)
							{
								I_AM = I_AM+idade
								CI_AM = CI_AM+1
								P_AM = P_AM+peso
								CP_AM = CP_AM+1
								A_AM = A_AM+altura
								CA_AM =CA_AM+1
								Md_I_AM = I_AM/CI_AM
								Md_A_AM = A_AM/CA_AM
								Md_P_AM = P_AM/CP_AM
								Ar_I_AM = mat.arredondar(Md_I_AM,2)
								Ar_A_AM = mat.arredondar(Md_A_AM,2)
								Ar_P_AM = mat.arredondar(Md_P_AM,2)

							}
					senao se (idade >=33 e idade <=61 e genero == 3)
							{
								I_XA = I_XA+idade
								CI_XA = CI_XA+1
								P_XA = P_XA+peso
								CP_XA = CP_XA+1
								A_XA = A_XA+altura
								CA_XA =CA_XA+1
								Md_I_XA = I_XA/CI_XA
								Md_A_XA = A_XA/CA_XA
								Md_P_XA = P_XA/CP_XA
								Ar_I_XA = mat.arredondar(Md_I_XA,2)
								Ar_A_XA = mat.arredondar(Md_A_XA,2)
								Ar_P_XA = mat.arredondar(Md_P_XA,2)
							}
							
					senao se (idade >61 e genero == 1)
							{
								I_EH = I_EH+idade
								CI_EH = CI_EH+1
								P_EH = P_EH+peso
								CP_EH = CP_EH+1
								A_EH = A_AH+altura
								CA_EH =CA_AH+1
								Md_I_EH = I_EH/CI_EH
								Md_A_EH = A_EH/CA_EH
								Md_P_EH = P_EH/CP_EH
								Ar_I_EH = mat.arredondar(Md_I_EH,2)
								Ar_A_EH = mat.arredondar(Md_A_EH,2)
								Ar_P_EH = mat.arredondar(Md_P_EH,2)

							}
							
					senao se (idade >61  e genero == 2)
							{
								I_EM = I_EM+idade
								CI_EM = CI_EM+1
								P_EM = P_EM+peso
								CP_EM = CP_EM+1
								A_EM = A_EM+altura
								CA_EM =CA_EM+1
								Md_I_EM = I_EM/CI_EM
								Md_A_EM = A_EM/CA_EM
								Md_P_EM = P_EM/CP_EM
								Ar_I_EM = mat.arredondar(Md_I_EM,2)
								Ar_A_EM = mat.arredondar(Md_A_EM,2)
								Ar_P_EM = mat.arredondar(Md_P_EM,2)

							}
					senao se (idade >61 e genero == 1)
							{
								I_XE = I_XE+idade
								CI_XE = CI_XE+1
								P_XE = P_XE+peso
								CP_XE = CP_XE+1
								A_XE = A_AH+altura
								CA_XE =CA_AH+1
								Md_I_XE = I_XE/CI_XE
								Md_A_XE = A_XE/CA_XE
								Md_P_XE = P_XE/CP_XE
								Ar_I_XE = mat.arredondar(Md_I_XE,2)
								Ar_A_XE = mat.arredondar(Md_A_XE,2)
								Ar_P_XE = mat.arredondar(Md_P_XE,2)

							}
							

					//Resultado Geral Soma_Idade,Soma_Peso,Soma_Altura Med_Idade,Med_Peso,Med_Altura

							Qtd_Entre = CP_JM+CP_JH+CP_AM+CP_AH+CP_EH+CP_EM+CI_XJ+CI_XA+CI_XE
							Soma_Idade = I_JM+I_JH+I_AM+I_AH+I_EH+I_EM+I_XA+I_XJ+I_XE
							Soma_Altura = A_JM+A_JH+A_AM+A_AH+A_EH+A_EM+A_XE+A_XJ+A_XA
							Soma_Peso = P_JM+P_JH+P_AM+P_AH+P_EH+P_EM+P_XE+P_XJ+P_XA							
							Med_Idade = Soma_Idade/Qtd_Entre
							Med_Altura = Soma_Altura/Qtd_Entre
							Med_Peso = Soma_Peso/Qtd_Entre
							Ar_Qtd_Entre = mat.arredondar(Qtd_Entre,0)
							Ar_Med_Idade = mat.arredondar(Med_Idade,2)
							Ar_Med_Peso = mat.arredondar(Med_Peso,2)
							Ar_Med_Altura =mat.arredondar(Med_Altura,2)		
				}

		escolha (parar) {
			
			caso 'N': 	
			escreva ("Pesquisa encerrada!\n")
			escreva ("\nQuantidade de Entrevistados: ", Qtd_Entre)
			escreva ("\nMedia Geral: \n",	"Idade: ", Ar_Med_Idade," Altura: ", Ar_Med_Altura," Peso: ", Ar_Med_Peso,"\n") 
			escreva ("\nMedia de Jovens Homens:\n",	"Idade: ", Ar_I_JH," Altura: ", Ar_A_JH," Peso: ", Ar_P_JH,"\n") 
			escreva ("\nMedia de Jovens Mulheres:\n", "idade: ", Ar_I_JM," Altura: ", Ar_A_JM," Peso: ", Ar_P_JM,"\n")
			escreva ("\nMedia de Adultos Homens:\n", "Idade: ", Ar_I_AH," Altura: ", Ar_A_AH," Peso: ", Ar_P_AH,"\n") 
			escreva ("\nMedia de Adultos Mulheres:\n", "Idade: ", Ar_I_AM," Altura: ", Ar_A_AM," Peso: ", Ar_P_AM,"\n")
			escreva ("\nMedia de Experts Homens:\n", "Idade: ", Ar_I_EH," Altura: ", Ar_A_EH," Peso: ", Ar_P_EH,"\n") 
			escreva ("\nMedia de Experts Mulheres:\n", "Idade: ", Ar_I_EM," Altura: ", Ar_A_EM," Peso: ", Ar_P_EM,"\n")
			escreva ("\nMedia de Jovens LGBTQIA+:\n", "Idade: ", Ar_I_XJ," Altura: ", Ar_A_XJ," Peso: ", Ar_P_XJ,"\n")
			escreva ("\nMedia de Adultos LGBTQIA+:\n", "Idade: ", Ar_I_XA," Altura: ", Ar_A_XA," Peso: ", Ar_P_XA,"\n")
			escreva ("\nMedia de Experts LGBTQIA+:\n", "Idade: ", Ar_I_XE," Altura: ", Ar_A_XE," Peso: ", Ar_P_XE,"\n")
		}
		}
	
		enquanto (parar != 'N')
		
		
		}					
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3196; 
 * @DOBRAMENTO-CODIGO = [45, 100, 117, 132, 148, 164, 180, 196, 213];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */