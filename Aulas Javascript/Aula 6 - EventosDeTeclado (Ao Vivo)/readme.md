# Página Principal e Dados do Perfil

Este projeto consiste em duas páginas HTML, a Página Principal e Dados do Perfil, desenvolvidas com HTML, CSS e JavaScript. 
O objetivo é simular a navegação entre as páginas e a interação com o menu por meio de eventos de teclado.

## Funcionalidades

### Navegação entre Página Principal e Dados do Perfil

Ao pressionar a tecla "1", a barra de navegação "nav-perfil" será exibida, permitindo a seleção de "Meus dados" ou "Logout". Caso a barra já esteja visível, a tecla "1" funcionará como um atalho para redirecionar novamente à página "Meus dados".

Ao pressionar a tecla "Esc", a barra de navegação "nav-perfil" será ocultada.

### Voltar à Página Principal

Ao pressionar a tecla "Backspace" (seta para a esquerda), o usuário será redirecionado à Página Principal.

## Explicação do JavaScript

No JavaScript, utilizamos eventos de teclado para capturar as ações do usuário. O código realiza as seguintes tarefas:

1. Captura os elementos do DOM necessários para a navegação.
2. Adiciona eventos de teclado usando o método `addEventListener`.
3. Quando a tecla "1" é pressionada, o código verifica se a barra de navegação "nav-perfil" já está visível ou não.
4. Se estiver visível, o clique é simulado no link "Meus dados", levando o usuário para a página correspondente.
5. Caso contrário, a barra é exibida.
6. Quando a tecla "Esc" é pressionada, a barra de navegação é ocultada.
7. Para permitir o retorno à Página Principal, o evento de teclado para a tecla "Backspace" é capturado.
8. Quando essa tecla é pressionada, o código simula o clique no link "página principal".

## Recursos Utilizados

- HTML: Estrutura básica das páginas e elementos do formulário.
- CSS: Estilos para deixar a interface mais agradável e legível.
- JavaScript: Manipulação dos eventos de teclado e redirecionamento entre as páginas.

## Melhorias Futuras

O projeto pode ser expandido para adicionar mais páginas e funcionalidades, como transições suaves entre as páginas, animações e interações mais avançadas. 
Além disso, a interface gráfica pode ser aprimorada para fornecer uma experiência mais agradável ao usuário.
