let button = document.querySelector("button");
let span = document.querySelector("span");
let section = document.querySelector("section");

function mostrarSpan () {
    span.style.opacity = "100"
}

// ao passar o mouse por cima
button.addEventListener("mouseover", mostrarSpan);

// some quando tira o mouse
function ocultarSpan () {
    span.style.opacity = "0"
}

button.addEventListener("mouseout", ocultarSpan)


// Ao clicarmos aperece nosso texto.
function fazerUmClick () {
    section.innerText = "Fez um click simples!"
}

section.addEventListener("click", fazerUmClick);

// duplo click
function fazerDoisClicks(){
    section.innerText = "Fez um duplo click!"
}
  

  button.addEventListener("dblclick", fazerDoisClicks);