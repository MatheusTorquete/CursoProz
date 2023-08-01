# Introdução
Este projeto contém uma página HTML básica que inclui um cabeçalho, um menu de navegação, uma seção de posts, um formulário de comentários e um rodapé. 
O arquivo `style.css` contém a estilização da página, enquanto o arquivo `script.js` possui um código JavaScript que interage com elementos da página.

## Estrutura HTML
A página HTML contém as seguintes seções principais:

### Cabeçalho
O cabeçalho inclui a logo da página e um menu de navegação com os seguintes itens: "Home", "Produtos", "Blog" e "Contato".

### Barra Lateral (aside)
A barra lateral contém uma lista de links para as redes sociais: Facebook, Instagram e Linkedin.

### Conteúdo Principal (main)
O conteúdo principal começa com um título principal "Blog do site" e uma seção de posts com dois artigos de exemplo. Cada artigo possui um título, autor, data e texto.

Em seguida, há uma seção de formulário para permitir que os usuários deixem comentários. O formulário inclui campos para "Nome", "Data" e "Mensagem".

### Rodapé (footer)
O rodapé inclui informações de direitos autorais e um menu de navegação com os mesmos itens do menu de navegação do cabeçalho. Além disso, também contém outra lista de links para as redes sociais.

## Estilização (style.css)
O arquivo `style.css` contém estilos para os elementos da página, como o cabeçalho, barra lateral, posts, formulário e rodapé. Os estilos são aplicados para melhorar o visual e a organização dos elementos na página.

## JavaScript (script.js)
O arquivo `script.js` contém código JavaScript que captura elementos da página utilizando diferentes seletores:

- `document.getElementById`: Captura o elemento com o ID "main-title".
- `document.getElementsByClassName`: Captura todos os elementos com a classe "elementos_nav" e exibe o terceiro elemento encontrado.
- `document.getElementsByTagName`: Captura todos os elementos `li` e exibe o conteúdo do quinto elemento encontrado.
- `document.querySelector`: Captura o primeiro elemento com a classe "elementos_nav".
- `document.querySelectorAll`: Captura todos os elementos com a classe "elementos_nav a".
- `function logText`: Uma função que recebe um array de elementos e exibe o conteúdo de cada elemento.

Essas capturas de elementos são usadas para exibir informações e interagir com os elementos da página através do console do navegador.
