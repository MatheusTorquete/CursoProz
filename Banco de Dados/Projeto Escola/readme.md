# Projeto de Banco de Dados - Escola

Este projeto de banco de dados foi desenvolvido para uma escola, com o objetivo de armazenar informações sobre alunos, empréstimos de livros, livros e sessões.

## Etapas do Projeto

1. **Criação das Tabelas**: Foram criadas várias tabelas para armazenar diferentes tipos de informações, como alunos, empréstimos, livros e sessões.

2. **Chaves Primárias e Auto Incremento**: Foi utilizado o conceito de chaves primárias para garantir a unicidade dos registros em cada tabela. 
Além disso, o recurso AUTO_INCREMENT foi empregado para gerar automaticamente valores únicos para as chaves primárias.

3. **Relacionamento entre Tabelas**: As tabelas foram projetadas de forma a estabelecer relacionamentos entre elas, 
como a tabela Livro_Emprestimo para relacionar livros e empréstimos, e a tabela Livro para relacionar livros e sessões.

4. **Inserção de Dados Fictícios**: Foram inseridos dados fictícios nas tabelas para ilustrar o funcionamento do banco de dados.

## Tabelas Criadas

- **ALUNO**: Armazena informações sobre os alunos, como nome, email e endereço.
- **Emprestimo**: Registra os empréstimos de livros, com data e hora, matrícula do aluno e data de devolução.
- **Livro_Emprestimo**: Tabela de junção para relacionar livros e empréstimos.
- **Livro**: Contém detalhes sobre os livros, como título, autor e código de sessão.
- **Sessao**: Armazena informações sobre as sessões de livros na biblioteca.

## Objetivo

O projeto visa criar um banco de dados funcional para auxiliar na gestão de alunos, empréstimos e acervo de livros em uma escola. 
As tabelas e seus relacionamentos foram cuidadosamente projetados para garantir a integridade dos dados e fornecer uma estrutura organizada para armazenar 
informações relevantes.



