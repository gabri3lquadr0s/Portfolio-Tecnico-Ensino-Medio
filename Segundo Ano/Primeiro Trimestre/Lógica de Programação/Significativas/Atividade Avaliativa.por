programa
{
	
	funcao inicio()
	{
		nomeIdade()
	}
	funcao nomeIdade(){
		cadeia nome
		inteiro idade, anonascimento, anoatual
		escreva("Escreva seu nome\n")
		leia(nome)
		escreva("Digite o ano de seu nascimento\n")
		leia(anonascimento)
		escreva("Em que ano estamos?\n")
		leia(anoatual)
		idade = anoatual - anonascimento
		se(idade >= 18){
			escreva("Olá "+nome+". Você tem "+idade+" anos e é de maior")
		}
		senao{
			escreva("Olá "+nome+". Você tem "+idade+" anos e é de menor")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 339; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */