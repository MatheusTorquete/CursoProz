# Fases de um Projeto de Banco de Dados

Para compreender as fases de um projeto de banco de dados, imagine um ciclo com várias etapas, onde cada uma é construída a partir da anterior.

## 1. Análise de Requisitos

A análise de requisitos é a fase inicial do projeto. Aqui, são identificados os requisitos do banco de dados, através de entrevistas e descrições do "minimundo" – uma parte abstrata do mundo real. É essencial identificar as regras de negócios corretamente para garantir a precisão das informações.

## 2. Projeto Conceitual

Com base nos requisitos, o projeto conceitual gera um esquema usando o Modelo Entidade-Relacionamento (MER), um modelo de alto nível. As entidades (objetos do mundo real), atributos (propriedades das entidades) e relacionamentos (associações entre entidades) são representados por retângulos, elipses e losangos, respectivamente. Os tipos de relacionamentos são: um para um (1, 1), um para muitos (1, n ou n, 1) e muitos para muitos (n, n).

## 3. Modelagem de Dados

A modelagem de dados consiste em várias etapas: 

- Mapeamento dos conceitos;
- Projeto Lógico;
- Projeto Físico.

O mapeamento dos conceitos envolve a transformação do esquema conceitual em um modelo de dados lógico. O projeto lógico cria estruturas de dados como tabelas, chaves primárias e estrangeiras. O projeto físico trata da implementação no SGBD escolhido, definindo tipos de dados e otimizações de armazenamento.

As fases de projeto conceitual e modelagem de dados são cruciais para estabelecer a estrutura do banco de dados.


