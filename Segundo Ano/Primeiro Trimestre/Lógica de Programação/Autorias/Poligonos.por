programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		poligonos()
	}

	funcao poligonos(){
		real area, base, altura, raio
		inteiro poligono

		faca{
		escreva("Qual polígono você quer calcular a área de?\n\n1-Quadrado\n2-Retângulo\n3-Círculo\n4-Triângulo\n")
		leia(poligono)
		}enquanto(poligono <= 0 ou poligono > 4)
		
		escolha(poligono){
			caso(1):
				escreva("Tamanho da base? \n")
				leia(base)
				area=mat.potencia(base, 2)
				escreva("A área é "+area)
				pare
				
			caso(2):
				escreva("Tamanho do base? \n")
				leia(base)
				escreva("Altura? \n")
				leia(altura)
				area=base*altura  
				escreva("A área é "+area)
				pare

			caso(3):
				escreva("Comprimento do raio? \n")
				leia(raio)
				area=mat.PI*mat.potencia(raio, 2.0)
				escreva("A área é "+area)
			     pare

			caso(4):
				escreva("Tamanho do base? \n")
				leia(base)
				escreva("Altura? \n")
				leia(altura)
				area=(base*altura)/2
				escreva("A área é "+area)
			     pare
	}
	}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */