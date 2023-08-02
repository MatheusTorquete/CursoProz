# Carrinho de Compras

Este projeto consiste em uma página HTML que simula um carrinho de compras para um produto específico. Desenvolvido com HTML, CSS e JavaScript, a aplicação possui as seguintes funcionalidades:

## Funcionalidades

- Exibe inicialmente a quantidade e o valor subtotal de um produto.
- Permite adicionar mais unidades do produto ao clicar no botão "+".
- Isso atualiza automaticamente o valor subtotal.
- Permite diminuir a quantidade do produto ao clicar no botão "-".
- Isso também atualiza o valor subtotal, desde que a quantidade seja maior que 1.

## Como Utilizar

1. Abra o arquivo HTML no seu navegador.
2. Na seção do produto, você verá a quantidade e o valor subtotal.
3. Para adicionar mais unidades do produto, clique no botão "+".
4. Para diminuir a quantidade do produto, clique no botão "-".

## Desenvolvimento

O projeto utiliza JavaScript para adicionar eventos listeners aos botões de adição e subtração. Esses eventos são responsáveis por atualizar a quantidade do produto e recalcular o valor subtotal.

A função `updateSubTotal` é responsável por calcular o valor total com base na quantidade de itens e atualizar o valor no elemento HTML correspondente.

## Recursos Utilizados

- HTML: Estrutura básica da página e elementos do formulário.
- CSS: Estilos para deixar a interface mais agradável e legível.
- JavaScript: Manipulação dos eventos listeners, cálculos e atualização dos elementos HTML.

## Melhorias Futuras

- Possibilidade de adicionar mais produtos e atualizar seus respectivos subtotais.
- Melhorar a interface gráfica com mais recursos visuais.
