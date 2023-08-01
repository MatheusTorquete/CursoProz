// Manipulando o DOM com innerText
let elementoH1 = document.querySelector('h1')

elementoH1.innerText = 'Novo título COM JS'

// capturando pelo querySelector
// let elementoH1 = document.querySelector('h1')
// console.log(elementoH1)

// retorna apenas o texto
console.log(elementoH1.innerText)

// alterando o html com JS.
let elementoMain = document.querySelector('main')
elementoMain.innerHTML = `
<h2>Novo Subtitulo</h2>
<ul>
    <li>Elemento de lista JS01</li>
    <li>Elemento de lista JS02</li>
    <li>Elemento de lista JS03</li>


</ul>


`


// captura e mostra todo o elemento no console
// let elementoMain = document.querySelector('main')
// console.log(elementoMain)
// // apenas o html
// console.log(elementoMain.innerHTML)
// //texto
// console.log(elementoMain.innerText)


