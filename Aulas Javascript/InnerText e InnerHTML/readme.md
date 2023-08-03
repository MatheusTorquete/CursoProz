# Manipulando o DOM com innerText e innerHTML

Este projeto demonstra a manipulação do DOM (Document Object Model) usando as propriedades `innerText` e `innerHTML` em um documento HTML.

## Funcionamento

O projeto consiste em um documento HTML com um título (`<h1>`), um subtítulo (`<h2>`), e um parágrafo (`<p>`) dentro de um elemento `<main>`. 

O arquivo JavaScript (`index.js`) é utilizado para realizar a manipulação do conteúdo desses elementos.

1. Através do uso de `querySelector`, o título (`<h1>`) é selecionado e sua propriedade `innerText` é modificada para "Novo título COM JS".
2. Isso faz com que o texto do título seja alterado dinamicamente ao carregar a página.

3. O conteúdo do elemento `<main>` é modificado dinamicamente utilizando `innerHTML`.
4.O JavaScript adiciona um novo subtítulo (`<h2>`) e uma lista não ordenada (`<ul>`) com três itens de lista (`<li>`).
O conteúdo original é substituído pelo novo conteúdo definido no arquivo JavaScript.

## Como usar

1. Abra o arquivo HTML em um navegador da web compatível.
2. Você verá o título original "Título Here" e o subtítulo original "Subtitulo", seguido de um parágrafo.
3. O arquivo JavaScript será carregado automaticamente e realizará a manipulação do DOM.
4. O título será alterado para "Novo título COM JS".
5. O subtítulo original e o parágrafo serão substituídos pelo novo subtítulo "Novo Subtitulo" e uma lista com três itens de lista.

## Tecnologias utilizadas

- HTML
- JavaScript

## Motivação

Este projeto foi criado para exemplificar a manipulação do DOM usando as propriedades `innerText` e `innerHTML` em JavaScript. 
Essas propriedades são úteis para modificar o conteúdo de elementos HTML em tempo de execução, 
permitindo que os desenvolvedores alterem dinamicamente o conteúdo da página sem a necessidade de recarregá-la. Isso é útil para criar páginas dinâmicas e interativas.
