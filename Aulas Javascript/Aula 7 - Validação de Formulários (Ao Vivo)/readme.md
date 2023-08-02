# Validação de Formulário

Este projeto consiste em um formulário de cadastro desenvolvido com HTML, CSS e JavaScript. 
O objetivo é realizar validações nos campos de entrada do formulário e fornecer feedback visual ao usuário indicando se os dados inseridos são válidos ou não.

## Funcionamento em JavaScript

O JavaScript é responsável por realizar as seguintes funcionalidades:

### Exibição do Popup de Campo Obrigatório

- Ao clicar no campo de entrada do "Username", o JavaScript adiciona uma classe chamada "required-popup" ao rótulo (label) associado a esse campo.
- Essa classe é responsável por criar um popup ao lado do rótulo, informando que o campo é obrigatório.

### Ocultação do Popup de Campo Obrigatório

- Ao sair do campo de entrada do "Username" (evento "blur"), o JavaScript remove a classe "required-popup" do rótulo associado a esse campo, fazendo com que o popup de campo obrigatório seja ocultado.

### Validação dos Campos de Entrada

- O JavaScript adiciona um ouvinte de evento "blur" para os campos de entrada "Username" e "E-mail".
- Ao sair desses campos, o código verifica se o valor inserido é válido de acordo com algumas regras simples:
    - Para o campo "Username": o valor inserido deve ter pelo menos 4 caracteres. Caso seja válido, a classe "correct" é adicionada ao campo de entrada, alterando sua cor de fundo para verde (#BBCCBB). Caso contrário, a classe "error" é adicionada, alterando sua cor de fundo para vermelho (#CCBBBB).
    - Para o campo "E-mail": o valor inserido deve conter o caractere "@" e ".com". Caso seja válido, a classe "correct" é adicionada ao campo de entrada, alterando sua cor de fundo para verde (#BBCCBB). Caso contrário, a classe "error" é adicionada, alterando sua cor de fundo para vermelho (#CCBBBB).

## Estilos Dinâmicos

O JavaScript adiciona e remove as classes "correct" e "error" aos campos de entrada, proporcionando feedback visual ao usuário sobre a validade dos dados inseridos. Os estilos definidos para essas classes alteram as cores de fundo e borda dos campos, indicando se os dados estão corretos ou não.

## Recursos Utilizados

- HTML: Estrutura do formulário e seus campos de entrada.
- CSS: Estilização da interface e definição de estilos dinâmicos para os campos de entrada.
- JavaScript: Adição de eventos de teclado para exibir e ocultar o popup de campo obrigatório e realizar a validação dos campos "Username" e "E-mail".
