// 3 perguntas 1 - Quem,2 -  O quê, 3 - Quando.

// // capturando elemento
// let numero = document.querySelector("h1");
// let botao = document.querySelector("button");

// // checagem
// let contagem = 0;

// // verificação e incremento
// function adicionarUm () {
//     contagem = contagem +1;
//     numero.innerText = contagem
// }

// adicionarUm();

// // adicionando um ao clickar no botão.
// botao.addEventListener("click", adicionarUm);

// forma resumida
let numero = document.querySelector("h1");
let botao = document.querySelector("button");
let contagem = 0;

 

botao.addEventListener("click", () => {
  contagem = contagem + 1;
  numero.innerText = contagem;
});