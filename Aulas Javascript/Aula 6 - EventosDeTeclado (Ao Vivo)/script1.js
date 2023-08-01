const pgPrincipal = document.getElementById("pg");

document.addEventListener("keyup", (event) => {
    console.log(event)
    if(event.code === 'Backspace'){
        pgPrincipal.click()
    }
})