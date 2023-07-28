# Grid Layout Responsivo

Neste repositório, temos um projeto de uma página web que utiliza o conceito de grid layout para criar uma estrutura responsiva com várias colunas.
A página utiliza HTML e CSS para criar a estrutura de navegação (`nav`) e uma grade (`div.grid`) contendo várias colunas.

## Estrutura do Projeto:

1. `index.html`: É o arquivo HTML que contém a estrutura básica da página. Possui uma navegação (`nav`) com dois itens de menu ("Home" e "Full Page") e uma grade (`div.grid`) com várias colunas (`div.col`).

2. `style.css`: É o arquivo CSS que contém as regras de estilo para modificar a aparência dos elementos HTML da página "Grid Layout Responsivo".

**Principais Estilos CSS Utilizados:**

1. `*`: Define estilos padrão para todos os elementos, removendo margens e ajustando o modelo de caixa para incluir as bordas no cálculo do tamanho total.

2. `.grid`: Define a estrutura da grade com as colunas, utilizando a propriedade `float` para posicionar as colunas lado a lado.

3. `.col`: Define o estilo para cada coluna, com uma altura fixa de 300px, preenchimento interno de 15px e utilizando `float: left` para o posicionamento na grade.

4. `.col-content`: Define o estilo para o conteúdo dentro de cada coluna, preenchendo a coluna inteira com um fundo vermelho.

5. `@media`: Utiliza media queries para tornar a grade responsiva em diferentes tamanhos de tela. Cada `@media` query ajusta a largura das colunas de acordo com a largura da tela.


