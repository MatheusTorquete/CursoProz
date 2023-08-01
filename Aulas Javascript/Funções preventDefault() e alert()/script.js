// capturando elementos
let linkProz = document.getElementById("link-proz")
let btnSubmit = document.querySelector("button[type=submit]")

// ao clicar no link não irá para a página, irá mostrar o alerta
linkProz.addEventListener("click", (e)=> {
    e.preventDefault()
    alert("Não foi possível acessar o link!")
})

btnSubmit.addEventListener("click", (e)=> {
    alert("Não foi possível enviar os dados do formulário!")
    e.preventDefault()
  
  })