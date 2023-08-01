// capturando elementos
let keyText = document.querySelector("#key-text");
let codeText = document.querySelector("#code-text");
let quadrado = document.querySelector("#quadrado");
let distanciaDaEsquerda = 0

// events
document.addEventListener("keydown", (e) => {
    if(e.code == "ArrowRight"){
      distanciaDaEsquerda = distanciaDaEsquerda + 10
      console.log(distanciaDaEsquerda);
  
      quadrado.style.left = distanciaDaEsquerda + "px"
    }
  })


//keypress	Tipo de evento que só reconhece teclas de letras, números ou pontuação, ou seja, desconsidera teclas como Shift, Alt, setas etc.
//keydown	Tipo de evento disparado ao apertar uma tecla. Ele é executado de forma repetida se a tecla permanece apertada.
//keyup	Tipo de evento disparado ao soltar uma tecla. Importante destacar que, antes, ela precisa ser pressionada.