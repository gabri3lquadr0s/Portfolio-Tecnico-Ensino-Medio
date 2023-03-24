programa
{
	funcao inicio()
	{
		calculadora()
	}
	funcao calculadora(){
		real num1, num2, resultado
		caracter operacao
		escreva("Escreva um número\n")
		leia(num1)
		escreva("Escreva outro número\n")
		leia(num2)
		escreva("Selecione uma operação\n\nAdição(+)\nSubração(-)\nMultiplicação(*)\nDivisão(/)\n\n")
		leia(operacao)
		escolha(operacao){
			caso '+':
				resultado = num1 + num2
				escreva(+resultado)
				pare
			caso '-':
				resultado = num1 - num2
				escreva(+resultado)
				pare
			caso '*':
				resultado = num1 * num2
				escreva(+resultado)
				pare
			caso '/':
				resultado = num1 / num2
				escreva(+resultado)
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */