// capturando o elemento pelo ID
const mainTitle = document.getElementById('main-title');
console.log(mainTitle);

// por Classe e acessando pela posição o array
const elementosNav = document.getElementsByClassName('elementos_nav');
console.log(elementosNav[2])

// por nome e posição e o html
const lista = document.getElementsByTagName('li')
console.log(lista[4].innerHTML)

// QuersySelector traz apenas o primeiro
const teste = document.querySelector('.elementos_nav')
console.log(teste)

// traz todos
const testando = document.querySelectorAll('.elementos_nav a')
console.log(testando)

// traz o 1
const teste2 = document.querySelector('.lista_redes li a')
console.log(teste2)

// percorre o nosso elemento que está capturado
function logText(arrayElementos){
    for (let index = 0; index < arrayElementos.length; index++) {
        const element = arrayElementos[index];
        console.log(element.innerHTML)
        
    }
}



logText(testando)
logText(teste2)