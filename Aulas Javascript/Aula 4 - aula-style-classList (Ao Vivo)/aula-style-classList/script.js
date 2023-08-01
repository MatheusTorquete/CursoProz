// capturando elemento
// const loguin = document.querySelector("h2");
// loguin.style.color = 'red'
// loguin.style.backgroundColor = 'violet'

// capturando button
// const button = document.querySelector("button");
// button.style.color = 'green'
// button.style.backgroundColor = '#5826E6'

// capturando nome de usuário
// const label = document.querySelectorAll("label");
// label[0].style.color = '#F5FA87'
// label[1].style.color = '#F5FA87'
// console.log(label)

// capturando input e altrando fundo
// const input = document.querySelectorAll("input");
// input[0].style.backgroundColor = '#F74D4A'
// input[1].style.backgroundColor = '#F74D4A'


// Simulando - Usuário digitou o nome errado.

// Capturando os elementos
const username = document.getElementById('login-usuario');
const errorMessage = document.getElementsByClassName('error-text')
const senha = document.getElementById('login-senha');

// adicionando a classe
//username.classList.add('error')
// acessando o array pela posição e pegando a classe do css visible para aparecer
//errorMessage[0].classList.add('visible')




// Acertando o usuário
username.classList.add('correct')


// Errando a senha
senha.classList.add('error')
errorMessage[1].classList.add('visible')
