// criação de elementos
let elementoJavascript = document.createElement('li')
elementoJavascript.innerText = 'Javascript'
elementoJavascript.id = 'ling-js'
console.log(elementoJavascript)

// capturando elemento
let listaLinguagens = document.querySelector('.lista-linguagens')
// inserindo elemento na página
listaLinguagens.appendChild(elementoJavascript)

// Os métodos createElement() e appendChild() nos permitem criar elementos HTML no DOM e inseri-los no nosso site de forma dinâmica.