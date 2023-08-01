// verificar no console do inspecionar
let div = document.querySelector('div')

// verificando se um elemento tem classe

let incluiClasse1 = div.classList.contains("borda-azul")

let incluiClasse = div.classList.contains("texto-novo")

console.log(incluiClasse)

// adiciona a classe
div.classList.add("texto-novo");

// remove a classe
div.classList.remove("borda-azul")

// alternando classes
div.classList.toggle("borda-azul")
