// capturando elementos do dom

let elementoClicado = document.getElementById("elemento-clicado")
let botaoTempo = document.getElementById("botao-tempo")
let tempo = document.getElementById("tempo")


// eventos click
botaoTempo.addEventListener("click", function(evento){
    console.log(evento.timeStamp)
    // captura os mile segundos quando clicamos
    tempo.innerText = evento.timeStamp;
})

// retorna o elemento que disparou o evento, no caso o click
document.addEventListener("click", function(e){
    console.log(e.target)
    elementoClicado.innerText = e.target.id
})