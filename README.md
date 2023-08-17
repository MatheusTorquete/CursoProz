# CursoProz - Pasta criada com toda a ementa do conteúdo do curso.


# HTML - Resumo de Conceitos Principais


## Sintaxe de Tags
- `<html>`: Define o início e o fim do documento HTML.
- `<head>`: Contém informações sobre o documento, como metadados e links para recursos externos.
- `<title>`: Define o título da página, exibido na aba do navegador.
- `<meta>`: Fornece metadados sobre a página, como descrição e codificação.
- `<body>`: Contém o conteúdo visível da página.
- `<h1>`, `<h2>`, ..., `<h6>`: Títulos de diferentes níveis.
- `<p>`: Parágrafos de texto.
- `<a>`: Links.
- `<img>`: Imagens.
- `<ul>`: Lista não ordenada.
- `<ol>`: Lista ordenada.
- `<li>`: Item de lista.
- `<table>`: Tabela.
- `<form>`: Formulários.
- `<input>`: Campos de entrada de dados.
- `<textarea>`: Área de texto.
- `<button>`: Botões interativos.

## Semântica
HTML5
- `<header>`: Cabeçalho.
- `<nav>`: Navegação.
- `<main>`: Conteúdo principal.
- `<article>`: Conteúdo independente e completo.
- `<section>`: Seção genérica.
- `<aside>`: Conteúdo relacionado, mas não essencial.
- `<footer>`: Rodapé.

## Tags de Formulário
- `<form>`: Define um formulário.
- `<input>`: Campo de entrada.
- `<textarea>`: Área de texto.
- `<select>`: Caixa de seleção.
- `<radio>`: Botões de rádio para escolha única.
- `<checkbox>`: Caixas de seleção para escolhas múltiplas.
- `<button>`: Botões interativos.
- `<label>`: Rótulo associado a um campo de entrada.
- `<fieldset>`: Agrupa elementos de um formulário.
- `<legend>`: Legenda para um `<fieldset>`.


# CSS - Resumo de Conceitos Principais
```
## Seletores
- **Tipo**: Seletor por nome de tag (e.g., `h1`, `p`).
- **Classe**: Seletor por classe (e.g., `.classe`).
- **ID**: Seletor por ID único (e.g., `#id`).
- **Agrupamento**: Agrupa múltiplos seletores (e.g., `h1, h2`).
- **Descendentes**: Seletor de elementos dentro de outro elemento (e.g., `div p`).
- **Filho direto**: Seletor de elementos filhos diretos (e.g., `div > p`).
- **Pseudo-classes**: Seletor baseado em estados (e.g., `:hover`, `:nth-child()`).

## Propriedades Comuns
- **color**: Cor do texto.
- **font-size**: Tamanho da fonte.
- **margin**, **padding**: Margens e espaçamentos internos.
- **border**: Borda.
- **background**: Fundo.
- **width**, **height**: Largura e altura.
- **position**: Posicionamento (e.g., `relative`, `absolute`).
- **display**: Tipo de exibição (e.g., `block`, `inline`, `flex`).

## Media Queries
Exemplo:
```css
@media screen and (max-width: 768px) {
    /* Estilos para telas menores */
    body {
        font-size: 16px;
    }
}
```

# JavaScript - Resumo dos Conceitos Principais

## Eventos
Os eventos são ações que ocorrem em elementos HTML, como cliques, pressionamentos de tecla e movimentos do mouse. O JavaScript pode ser usado para detectar e responder a esses eventos.

Exemplo de código:
```javascript
document.getElementById("botao").addEventListener("click", function() {
    alert("Botão clicado!");
});
```

## Funções
Funções são blocos de código reutilizáveis que podem ser chamados para executar ações específicas. Elas ajudam a organizar o código e evitar repetições.

Exemplo de função:
```javascript
function saudacao(nome) {
    return "Olá, " + nome + "!";
}

let mensagem = saudacao("João");
console.log(mensagem); // Saída: "Olá, João!"
```

## Manipulação do DOM
O DOM (Document Object Model) usado para modificar elementos do DOM, como alterar texto, estilos e adicionar/remover elementos.

Exemplo de código:
```javascript
document.getElementById("paragrafo").innerHTML = "Novo texto";
document.getElementById("elemento").style.color = "red";
```

## Armazenamento Local
O JavaScript permite armazenar dados no navegador do usuário usando o Local Storage. Isso é útil para manter informações entre sessões.

Exemplo de código:
```javascript
localStorage.setItem("nome", "João");
let nome = localStorage.getItem("nome");
console.log(nome); // Saída: "João"
```


# Banco de Dados

## JOINs


Exemplo de código:
```sql
SELECT clientes.nome, pedidos.numero
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
```

Claro, aqui está a seção revisada sobre criação de funções em um banco de dados:

## Funções


### Criação de Função

```sql
CREATE OR REPLACE FUNCTION calcular_preco_medio()
RETURNS NUMERIC AS $$
DECLARE
    preco_medio NUMERIC;
BEGIN
    SELECT AVG(preco) INTO preco_medio FROM produtos;
    RETURN preco_medio;
END;
$$ LANGUAGE PLPGSQL;
```

Neste exemplo:
- `CREATE OR REPLACE FUNCTION` define o início da criação da função.
- `calcular_preco_medio()` é o nome da função.
- `RETURNS NUMERIC` especifica o tipo de dado retornado pela função.
- O bloco `DECLARE` é usado para declarar variáveis locais.
- `SELECT AVG(preco) INTO preco_medio FROM produtos;` calcula o preço médio dos produtos e atribui-o à variável `preco_medio`.
- `RETURN preco_medio;` retorna o valor calculado.

Depois de criada, a função pode ser chamada como parte de uma consulta:

```sql
SELECT calcular_preco_medio();
```


Exemplo de função pré-definida:
```sql
SELECT AVG(preco) FROM produtos;
```

## Triggers (Gatilhos)
Triggers são procedimentos armazenados no banco de dados que são acionados automaticamente quando ocorre um evento, como inserção, atualização ou exclusão de registros.

Exemplo de trigger:
```sql
CREATE TRIGGER audit_log
AFTER INSERT ON pedidos
FOR EACH ROW
INSERT INTO log_pedidos (pedido_id, acao, data)
VALUES (NEW.id, 'inserção', NOW());
```

## Procedimentos Armazenados
Procedimentos armazenados são conjuntos de instruções SQL agrupados em uma única unidade lógica, que pode ser executada repetidamente.

Exemplo de procedimento armazenado:
```sql
CREATE PROCEDURE get_customer_by_id(IN customer_id INT)
BEGIN
    SELECT * FROM customers WHERE id = customer_id;
END;
```


