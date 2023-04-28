function converte(){
    var temperatura = Number(document.getElementById("tempValor").value)
    if(document.getElementById("fc").checked){
        var temperaturaConvertida = (temperatura - 32)*5/9
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
    else if(document.getElementById("cf").checked){
        var temperaturaConvertida = temperatura*9/5+32
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
    else if(document.getElementById("kc").checked){
        var temperaturaConvertida = temperatura - 273.15
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
    else if(document.getElementById("ck").checked){
        var temperaturaConvertida = temperatura + 273.15
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
    else if(document.getElementById("fk").checked){
        var temperaturaConvertida = (temperatura + 459.67)*5/9
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
    else if(document.getElementById("kf").checked){
        var temperaturaConvertida = 1.8*(temperatura-273)+32
        document.getElementById("resultado").innerHTML = temperaturaConvertida
    }
}