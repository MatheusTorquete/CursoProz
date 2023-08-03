#Manipulando listas de classes

Este projeto demonstra como manipular listas de classes de elementos HTML usando JavaScript. 
A página contém um único elemento `<div>` com a classe "borda-azul" inicialmente definida no arquivo CSS.

## Funcionamento

Ao abrir o arquivo HTML em um navegador, você verá uma `<div>` com o texto "Manipulando listas de classes".
A `<div>` possui uma classe inicial chamada "borda-azul", que aplica uma borda sólida de cor escura ao redor do elemento.

1. Utilizando `querySelector`, o elemento `<div>` é selecionado no JavaScript.

2. A propriedade `classList` do elemento é usada para verificar se a classe "texto-novo" está incluída na lista de classes da `<div>`.
3. Inicialmente, a classe "texto-novo" não está presente, portanto, `incluiClasse` será `false`. E a classe "borda-azul" está presente, então `incluiClasse1` será `true`.

4. A classe "texto-novo" é adicionada à `<div>` usando o método `classList.add()`, alterando a cor do texto para vermelho e aumentando a espessura da fonte.

5. A classe "borda-azul" é removida da `<div>` usando o método `classList.remove()`, removendo a borda azul do elemento.

6. O método `classList.toggle()` é usado para alternar a classe "borda-azul" novamente.
7. Como a classe "borda-azul" foi removida anteriormente, ela será adicionada novamente.

## Como usar

1. Abra o arquivo HTML em um navegador da web compatível.

2. Você verá a `<div>` com o texto "Manipulando listas de classes" e uma borda azul em torno dela.

3. Abra o console do navegador (normalmente pressionando `F12` e navegando para a guia "Console") para ver os logs de saída do JavaScript.

4. No console, você verá o resultado da verificação inicial das classes e as ações de adição, remoção e alternância de classes realizadas pelo JavaScript.

## Tecnologias utilizadas

- HTML
- CSS
- JavaScript

## Motivação

Este projeto foi criado para demonstrar como manipular listas de classes de elementos HTML usando JavaScript. 
A manipulação de classes é uma técnica essencial para tornar as páginas da web interativas e dinâmicas. 
Ela permite que desenvolvedores adicionem, removam ou alternem classes para controlar a aparência e o comportamento dos elementos em resposta a eventos 
ou interações do usuário.
