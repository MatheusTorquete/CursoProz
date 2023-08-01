// capturando elemento
// const linkPerfil = document.getElementById("link-perfil");
// ao passar o mouse abre uma nova barra de navegação
// linkPerfil.addEventListener("mouseover", ()=> {
//   navPerfil.style.display = "block"
// })


const navPerfil = document.getElementById("nav-perfil");
const linkDadosPerfil = document.getElementById("link-perfil-dados")

// vamos adicionar na página toda
// eventos de teclado
document.addEventListener("keyup", (event) => {
  console.log(event.code) 
    if (event.code === 'Digit1'){
      if(navPerfil.style.display === 'block'){
        linkDadosPerfil.click() // irá para a pagina caso 1 denovo
      } else {
        navPerfil.style.display = 'block'
      }
      
    } else if(event.code === 'Escape'){
      navPerfil.style.display = 'none'
    }
  
  // console.log(event.key) // vendo a tecla que apertamos
  // console.log(event.code)
});


