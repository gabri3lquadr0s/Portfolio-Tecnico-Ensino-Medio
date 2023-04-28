function nomeIdade(){
    var nome = prompt(`Digite seu nome`)
    var anoNascimento = Number(prompt(`Digite seu ano de nascimento`))
    var anoAtual = Number(prompt(`Em que ano estamos?`))
    var idade = anoAtual - anoNascimento
    return idade < 18 ? alert(`Olá ${nome}, você tem ${idade} e é de menor`) : alert(`Olá ${nome}, você tem ${idade} e é de maior`)
}
