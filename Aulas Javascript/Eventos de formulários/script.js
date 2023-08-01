// capturando elementos
let inputEmail = document.getElementById("email");

let inputIdade = document.getElementById("idade");

let formulario = document.querySelector("form");

/* Evento	Descrição
focus	O elemento é focado pelo usuário.
blur	O elemento perde o foco do usuário.
change	O elemento teve seu valor alterado depois de perder o foco.*/

// focus
inputEmail.addEventListener("focus", ()=> {
    inputEmail.style.backgroundColor = "lightgreen"
});


// blur
inputEmail.addEventListener("blur", (e)=> {
    e.target.style.backgroundColor = ""
  });

  // change
  inputIdade.addEventListener("change", ()=> {
    alert("Certeza que quer alterar seus dados?")
  });

  //submit
  formulario.addEventListener("submit", ()=> {
    alert("Dados enviados com sucesso!")
  });