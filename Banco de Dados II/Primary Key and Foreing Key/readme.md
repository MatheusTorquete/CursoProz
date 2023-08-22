# Chaves Primárias e Chaves Estrangeiras em Bancos de Dados

Este é um guia sobre chaves primárias (PK) e chaves estrangeiras (FK) em bancos de dados. 
Esses conceitos são fundamentais para organizar e relacionar dados em uma estrutura de tabelas.

## Chave Primária (PK)

Uma chave primária é um identificador exclusivo para cada registro em uma tabela. 
Ela garante que a informação não seja repetida e não pode ser nula. Existem dois tipos de chaves primárias:

1. **Chave Primária Simples:** Consiste em um único campo na tabela que não se repete entre os registros.
   
   Exemplo:
   
   | CPF (PK)         | NOME        | ENDEREÇO             |
   |------------------|-------------|----------------------|
   | 123.456.789-11   | Carol Dias  | Rua XV, 015          |
   | 120.455.789-12   | Carlos Souza| Rua do Barbalho, 56 |
   
2. **Chave Primária Composta:** Formada por mais de um campo, permitindo que um mesmo valor se repita em um dos campos desde que a combinação total seja única.

   Exemplo:
   
   | NUMERO_CONTA (PK) | NUMERO_AGENCIA (PK) | SALDO     |
   |-------------------|---------------------|-----------|
   | 56                | 1                   | R$ 200,00 |
   | 08                | 2                   | R$ 1.300,00 |

## Chave Estrangeira (FK)

Uma chave estrangeira é uma referência a uma chave primária em outra tabela. Ela estabelece um relacionamento entre as tabelas. Quando uma chave primária de uma tabela é referenciada em outra, ela se torna uma chave estrangeira.

Exemplo:

| CPF (PK)          | NOME        | ID (FK) |
|-------------------|-------------|---------|
| 123.543.333-65    | Ana Silva   | 3       |
| 903.222.222-22    | Otávio Sales| 4       |

Aqui, o campo ID é uma chave estrangeira que se origina da tabela DEPARTAMENTO, onde o ID é a chave primária.

## Conclusão

Chaves primárias e chaves estrangeiras são conceitos essenciais em bancos de dados. Elas garantem a integridade dos dados, evitando duplicações e estabelecendo relações entre tabelas. Compreender esses conceitos é fundamental para criar e gerenciar eficazmente bancos de dados.
