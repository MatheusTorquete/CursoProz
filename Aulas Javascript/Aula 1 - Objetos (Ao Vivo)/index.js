let username = 'Matheus'
let senha_usuario = 1234;
const admin = true;

if (senha_usuario === 1234 && username === 'Matheus') {
  console.log('Por favor, insira sua nova senha.');
} else {
  console.log('Username/Senha incorretos!');
}


if(admin === false){
  console.log('Você não tem permissão de administrador!')
}else{
  console.log('Bem vindo a área do admnistrador!')
}