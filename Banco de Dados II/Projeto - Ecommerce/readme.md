# Projeto de Banco de Dados - Ecommerce

## Finalidades do Projeto

O objetivo deste projeto é criar um banco de dados relacional para gerenciar informações relacionadas a clientes, produtos, 
pedidos e funcionários. As principais finalidades do projeto incluem:

1. **Armazenamento de Informações de Clientes**: O banco de dados permite registrar informações sobre os clientes, como nome, email e telefone.

2. **Gestão de Produtos**: É possível cadastrar produtos, incluindo nome e preço unitário.

3. **Registro de Pedidos**: O banco de dados possibilita registrar detalhes dos pedidos, como data do pedido e associação a um cliente específico.

4. **Relacionamento entre Tabelas**: O projeto estabelece relacionamentos entre as entidades por meio de chaves estrangeiras, garantindo integridade e coesão dos dados.

5. **Registro de Funcionários**: O banco de dados também inclui informações sobre os funcionários, como nome e cargo.

## Estrutura das Tabelas

O banco de dados é composto por várias tabelas, cada uma com seus atributos específicos. 
Abaixo estão algumas das principais tabelas e seus atributos:

### Tabela Cliente

- ID (Chave Primária)
- Nome
- Email
- Telefone

### Tabela Produto

- ID (Chave Primária)
- Nome
- Preço

### Tabela Pedido

- ID (Chave Primária)
- ClienteID (Chave Estrangeira referenciando Cliente)
- DataPedido
- FuncionarioID (Chave Estrangeira referenciando Funcionário)

### Tabela ItensPedido

- ID (Chave Primária)
- PedidoID (Chave Estrangeira referenciando Pedido)
- ProdutoID (Chave Estrangeira referenciando Produto)
- Quantidade

### Tabela Funcionários

- ID (Chave Primária)
- Nome
- Cargo

## Consultas de Exemplo

O projeto também inclui exemplos de consultas SQL para ilustrar como você pode recuperar informações relevantes do banco de dados. 
Algumas das consultas incluem:

- Listar os produtos em um pedido específico.
- Listar todos os clientes, produtos e quantidades associadas a pedidos.

## Conclusão
neste repositório é uma implementação básica de um sistema de gerenciamento de informações de clientes, produtos, 
pedidos e funcionários. Ele ilustra como criar tabelas, estabelecer relacionamentos entre elas e executar consultas para obter dados relevantes.
