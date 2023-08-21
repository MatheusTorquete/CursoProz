# Projeto SQL: Controle de Pedidos e Clientes

Este é um projeto que visa demonstrar a criação de um banco de dados em SQL para o controle de pedidos e clientes. 
Foram abordados tópicos como a criação de tabelas, relacionamentos entre elas e consultas utilizando joins.

## Tabelas Criadas

Neste projeto, foram criadas as seguintes tabelas:

### Cliente
- **id**: Chave primária do cliente.
- **nome**: Nome do cliente.
- **sobrenome**: Sobrenome do cliente.
- **idade**: Idade do cliente.
- **pais**: País de origem do cliente.

### Produto
- **id**: Chave primária do produto.
- **item**: Nome do item/produto.
- **marca**: Marca do produto.

### Pedido
- **id**: Chave primária do pedido.
- **fk_id_cliente**: Chave estrangeira referenciando a tabela Cliente.
- **fk_id_produto**: Chave estrangeira referenciando a tabela Produto.
- **quantidade**: Quantidade do produto no pedido.

## Inserção de Dados

Foram inseridos exemplos de clientes, produtos e pedidos nas respectivas tabelas para demonstrar o funcionamento do banco de dados.

## Consultas e Joins

São demonstradas consultas que utilizam diferentes tipos de joins para combinar informações de diferentes tabelas:

- **Inner Join**: Combinação de dados que existem em ambas as tabelas.
- **Right Join**: Combinação de dados da tabela à direita e os correspondentes da tabela à esquerda.
- **Left Join**: Combinação de dados da tabela à esquerda e os correspondentes da tabela à direita.
- **Desafio de Join**: Combinação de dados entre três tabelas, renomeando colunas para melhor compreensão.
