// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");

// Mostrar popup de campo obrigatório
usernameInput.addEventListener('focus', ()=> { // quando clicamos
    usernameLabel.classList.add('required-popup')
})

// Ocultar popup de campo obrigatório
usernameInput.addEventListener('blur', ()=> { // quando clicamos
    usernameLabel.classList.remove('required-popup')
})

// adicionando as verificações no loguin 
// Validar valor do input

function validationInputEmail (input, inputValue) {
    if (inputValue.includes('@') && inputValue.includes('.com')) {
        input.classList.remove('error')
        input.classList.add('correct')
    } else {
        input.classList.remove('correct')
        input.classList.add('error')
    }
}

function inputValidation(input) {
    input.addEventListener('blur', (event) => { // fica esperando
        const inputValue = event.target.value
        
        if(event.target.id === 'email') {
            validationInputEmail(input, inputValue)
        } else {
            if(inputValue.length < 4) {
                input.classList.remove('correct')
                input.classList.add('error')
            } else {
                input.classList.remove('error')
                input.classList.add('correct')
            }
        }
        
       
    })
    
}

inputValidation(usernameInput)


const emailInput = document.getElementById('email')
inputValidation(emailInput)



