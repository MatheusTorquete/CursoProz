// let quantidadeSubtotal = document.getElementById("quantidade-subtotal");
// let valorSubtotal = document.getElementById("valor-subtotal");
// let subtotalInfo = {
//   quantidade: 1,
//   valor: 11.66,
// };
// quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
// valorSubtotal.innerText = subtotalInfo.valor;


// array dos produtos
const produtos = [
  {
    nome: "Dom Casmurro",
    valor: 11.66
  }
]

// Capturando Elementos
const addButton = document.getElementById("btn-adicionar-produto-01");
const input = document.getElementById("quantidade-produto-01");
const lessButton = document.getElementById("btn-subtrair-produto-01")
const valorSubTotal = document.getElementById("valor-subtotal");
const quantidadeSubTotal = document.getElementById("quantidade-subtotal")

function updateSubTotal (quantidadeItens) {
  const sufixo = quantidadeItens === 1 ? ' item' : ' itens'
  const valorTotal = produtos[0].valor * quantidadeItens
  valorSubTotal.innerText = valorTotal.toFixed(2)
  quantidadeSubTotal.innerText = quantidadeItens + sufixo
}

// Adicionando ao Botão.
addButton.addEventListener("click", ()=> {
  input.value = Number(input.value) + 1
  updateSubTotal(Number(input.value))
});

// Diminuindo e verificando
lessButton.addEventListener("click", () => {
  if (input.value > 1) {
    input.value = Number(input.value) - 1
    updateSubTotal(Number(input.value))
 }
})


updateSubTotal(Number(input.value))