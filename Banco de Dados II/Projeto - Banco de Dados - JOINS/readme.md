# Projeto de Banco de Dados

Este repositório contém um projeto de banco de dados que visa armazenar informações sobre clientes, pedidos, produtos, categorias e transportadoras, 
estabelecendo relacionamentos entre essas entidades por meio de chaves estrangeiras. Abaixo estão detalhadas as principais finalidades do projeto 
e suas principais características.

## Finalidades do Projeto

O objetivo deste projeto é criar um banco de dados relacional que permita armazenar e gerenciar informações relacionadas a clientes, pedidos, produtos e transportadoras. 

As principais finalidades do projeto incluem:

1. **Armazenamento de Dados de Clientes**: O banco de dados permite registrar informações sobre os clientes, como nome, sexo, CPF, data de nascimento, endereço,
telefone, e-mail, entre outros.

4. **Registro de Pedidos**: É possível registrar detalhes dos pedidos, como número, data e hora de emissão, valor do frete e status do pedido.


5. Os pedidos estão relacionados aos clientes que os fizeram.

6. **Gestão de Produtos**: O banco de dados possibilita o cadastro de produtos, incluindo nome, preço unitário e quantidade em estoque.
   Os produtos estão associados a categorias e fornecedores.

8. **Classificação de Produtos em Categorias**: Os produtos podem ser classificados em categorias, permitindo uma organização mais eficiente
   e facilitando consultas específicas.

10. **Relacionamento com Transportadoras**: O banco de dados permite associar transportadoras aos pedidos, registrando informações como código, nome e CNPJ.

## Estrutura das Tabelas

O banco de dados é composto por várias tabelas, cada uma com seus atributos específicos. Aqui estão algumas das principais tabelas e seus atributos:

### Tabela CLIENTE

- cli_codigo (Chave Primária)
- cli_nome
- cli_sexo
- cli_cpf
- cli_datanascimento
- cli_endereco
- cli_telefone
- cli_email
- cli_status
- dt_insert_linha

### Tabela PEDIDO

- ped_numero (Chave Primária)
- ped_datahora
- ped_datahorasaida
- ped_datahoraentrega
- ped_valorfrete
- ped_status
- fk_cli_codigo (Chave Estrangeira referenciando CLIENTE)
- fk_func_matricula (Chave Estrangeira referenciando FUNCIONARIO)
- fk_transp_codigo (Chave Estrangeira referenciando TRANSPORTADORA)
- dt_insert_linha

### Tabela PRODUTO

- prod_codigo (Chave Primária)
- prod_nome
- prod_precounitario
- prod_quantidadeestoque
- prod_status
- fk_categ_codigo (Chave Estrangeira referenciando CATEGORIA)
- fk_forn_codigo (Chave Estrangeira referenciando FORNECEDOR)
- dt_insert_linha

### Tabela PEDIDO_PRODUTO

- pedprod_codigo (Chave Primária)
- pedprod_precovenda
- pedprod_quantidadeitensvendidos
- fk_ped_numero (Chave Estrangeira referenciando PEDIDO)
- fk_prod_codigo (Chave Estrangeira referenciando PRODUTO)
- dt_insert_linha

## Consultas de Exemplo

O projeto também inclui exemplos de consultas SQL utilizando diferentes tipos de junções (INNER JOIN, LEFT JOIN, RIGHT JOIN e FULL JOIN) 
para combinar dados de várias tabelas. As consultas demonstram como você pode recuperar informações relevantes do banco de dados por meio dessas junções.

## Conclusão

O projeto de banco de dados apresentado neste repositório é uma implementação básica de um sistema de gerenciamento de informações de clientes, pedidos, 
produtos e transportadoras. Ele ilustra como criar tabelas, estabelecer relacionamentos entre elas e executar consultas para obter dados relevantes. 
