/* Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos. 
Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia. 
Para ajudar a empresa, crie um procedure para agilizar esse processo. */



-- Criação do Banco de Dados
CREATE DATABASE VendasDB;
USE VendasDB;

-- Criação da Tabela de Vendas
CREATE TABLE Vendas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Produto VARCHAR(100),
    Quantidade INT,
    DataCompra DATE
);

-- Inserção de Dados de Exemplo
INSERT INTO Vendas (Produto, Quantidade, DataCompra)
VALUES
    ('Produto A', 5, '2023-07-12'),
    ('Produto B', 3, '2023-07-12'),
    ('Produto C', 8, '2023-07-12'),
    ('Produto A', 2, '2023-07-13'),
    ('Produto B', 6, '2023-07-13'),
    ('Produto C', 4, '2023-07-13'),
    ('Produto A', 7, '2023-07-14'),
    ('Produto B', 1, '2023-07-14');

-- Criação da Procedure para Relatório Diário de Vendas
DELIMITER //
CREATE PROCEDURE RelatorioDiarioVendas()
BEGIN
    SELECT DataCompra, Produto, SUM(Quantidade) AS TotalComprado
    FROM Vendas
    GROUP BY DataCompra, Produto;
END;
//
DELIMITER ;

