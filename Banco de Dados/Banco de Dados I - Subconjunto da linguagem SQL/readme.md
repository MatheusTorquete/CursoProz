# Linguagem SQL - DDL, DML, DQL, DCL e DTL

A Linguagem SQL (Structured Query Language) é utilizada para interagir com bancos de dados relacionais. Ela é dividida em diferentes categorias, cada uma com seus próprios comandos específicos.

## DDL (Data Definition Language)

DDL é responsável pela definição dos dados no banco de dados. Seus principais comandos são:

- `CREATE DATABASE nome_do_banco;`: Cria um novo banco de dados.
- `USE nome_do_banco;`: Seleciona um banco de dados para uso.
- `ALTER TABLE nome_da_tabela CHANGE COLUMN nome_coluna novo_nome_coluna novo_tipo_coluna;`: Altera a estrutura de uma tabela.
- `DROP TABLE nome_da_tabela;`: Remove uma tabela do banco de dados.

## DML (Data Manipulation Language)

DML é responsável pela manipulação dos dados. Seus principais comandos são:

- `INSERT INTO tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);`: Insere novos registros em uma tabela.
- `UPDATE tabela SET coluna = novo_valor WHERE condição;`: Atualiza registros existentes.
- `DELETE FROM tabela WHERE condição;`: Remove registros de uma tabela.

## DQL (Data Query Language)

DQL é a linguagem de consulta de dados. Seu principal comando é o `SELECT`:

- `SELECT * FROM tabela;`: Seleciona todos os registros de uma tabela.
- `SELECT * FROM tabela WHERE condição;`: Seleciona registros baseados em uma condição.

## DCL (Data Control Language)

DCL é responsável pelo controle dos dados. Seus principais comandos são:

- `GRANT permissões ON objeto TO usuário;`: Concede permissões a um usuário.
- `REVOKE permissões ON objeto FROM usuário;`: Revoga permissões de um usuário.

## DTL (Data Transaction Language)

DTL é a linguagem de transação de dados. Seus principais comandos são:

- `START TRANSACTION;`: Inicia uma transação.
- `COMMIT;`: Confirma as alterações realizadas em uma transação.
- `ROLLBACK;`: Desfaz as alterações realizadas em uma transação.

