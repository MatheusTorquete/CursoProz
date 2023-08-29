# Relatório Diário de Vendas - Procedure

Este repositório contém um exemplo de criação de uma procedure SQL para gerar um relatório diário de vendas de uma empresa. 

A procedure agiliza o processo de levantamento da quantidade de produtos comprados por dia.

## Criação do Banco de Dados

Primeiramente, um banco de dados chamado `VendasDB` é criado para armazenar as informações das vendas.

Uma tabela chamada `Vendas` é criada para registrar os detalhes das vendas, incluindo o nome do produto, a quantidade comprada e a data da compra.

## Inserção de Dados de Exemplo

Alguns dados de exemplo são inseridos na tabela `Vendas` para demonstrar o funcionamento da procedure. 
Cada registro contém informações sobre o produto, a quantidade comprada e a data da compra.

## Criação da Procedure

Uma procedure chamada `RelatorioDiarioVendas` é criada para gerar o relatório diário de vendas. 

Essa procedure realiza um agrupamento dos dados por data da compra e nome do produto, calculando o total de produtos comprados para cada combinação de data e produto.

A estrutura da procedure é a seguinte:

```sql
DELIMITER //
CREATE PROCEDURE RelatorioDiarioVendas()
BEGIN
    SELECT DataCompra, Produto, SUM(Quantidade) AS TotalComprado
    FROM Vendas
    GROUP BY DataCompra, Produto;
END;
//
DELIMITER ;
```

## Utilização da Procedure

Para utilizar a procedure e obter o relatório diário de vendas, basta executar o seguinte comando SQL:

```sql
CALL RelatorioDiarioVendas();
```

A procedure retornará o resultado contendo a data da compra, o nome do produto e o total comprado agrupado por data e produto.

## Conclusão

A procedure `RelatorioDiarioVendas` é uma ferramenta valiosa para a empresa de vendas, pois simplifica o processo de obtenção do levantamento diário da quantidade de produtos comprados. Com essa procedure, a empresa pode gerar rapidamente informações relevantes para análises e tomadas de decisão. 
Este é apenas um exemplo de como as procedures podem ser usadas para automatizar tarefas no contexto de um banco de dados.
