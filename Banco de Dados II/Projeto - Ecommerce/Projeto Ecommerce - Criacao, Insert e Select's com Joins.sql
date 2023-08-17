/*
Cria��o das Tabelas

Matheus Torquete
Data 14/08/2023.

CREATE TABLE Cliente (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Produto (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Pedido (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT,
    DataPedido DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID)
);


CREATE TABLE ItensPedido (
    ID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedido(ID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ID)
);

CREATE TABLE Funcion�rios (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100),
    Cargo VARCHAR(50)
);
*/

/*
Populando as tabelas 5 para cada tabela.

INSERT INTO Cliente (Nome, Email, Telefone)
VALUES
    ('Maria', 'maria@example.com', '1234567890'),
    ('Jo�o', 'joao@example.com', '9876543210'),
    ('Ana', 'ana@example.com', '4567891230'),
    ('Carlos', 'carlos@example.com', '5678901234'),
    ('Luisa', 'luisa@example.com', '3456789012');

	INSERT INTO Produto (Nome, Preco)
VALUES
    ('Camiseta', 29.99),
    ('Cal�a Jeans', 59.99),
    ('T�nis', 79.99),
    ('Bolsa', 39.99),
    ('�culos de Sol', 19.99);

INSERT INTO Pedido (DataPedido, ClienteID)
VALUES
    ('2023-07-15', 1),
    ('2023-07-16', 2),
    ('2023-07-16', 1),
    ('2023-07-17', 3),
    ('2023-07-18', 4);

	INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade)
VALUES
    (1, 1, 2),
    (1, 2, 1),
    (2, 3, 1),
    (3, 1, 3),
    (4, 4, 2);


	-- Inserir dados na tabela Funcion�rios
INSERT INTO Funcion�rio (Nome, Cargo)
VALUES
    ('Jo�o', 'Vendedor'),
    ('Maria', 'Caixa'),
    ('Pedro', 'Gerente'),
    ('Ana', 'Atendente'),
    ('Jos�', 'Vendedor');
*/

/*
Altera��es na tabela
-- Adicionar coluna e chave estrangeira na tabela Pedido
ALTER TABLE Pedido
ADD FuncionarioID INT;
-- Adicionar chave estrangeira na tabela Pedido para relacionar com a tabela Funcion�rio
ALTER TABLE Pedido
ADD CONSTRAINT FK_Funcionario FOREIGN KEY (FuncionarioID) REFERENCES Funcion�rio(ID);

-- Alterando tamanho do campo
  ALTER TABLE Cliente
  ALTER COLUMN Nome Varchar(35);

    ALTER TABLE Cliente
  ALTER COLUMN Email Varchar(50);

  ALTER TABLE Funcion�rio
  ALTER COLUMN Nome VARCHAR(35);

   ALTER TABLE Funcion�rio
  ALTER COLUMN Cargo VARCHAR(35);

   ALTER TABLE Produto
  ALTER COLUMN Nome VARCHAR(35);
*/




-- Listar os produtos em um pedido espec�fico:
SELECT p.Nome, i.Quantidade
FROM Produto p
INNER JOIN ItensPedido i ON p.ID = i.ProdutoID
WHERE i.PedidoID = 1;


-- Listando Todos os Clientes, Produtos e Quantidades
SELECT c.Nome AS NomeCliente, p.Nome AS NomeProduto, i.Quantidade
FROM Cliente c
INNER JOIN Pedido ped ON c.ID = ped.ClienteID
INNER JOIN ItensPedido i ON ped.ID = i.PedidoID
INNER JOIN Produto p ON i.ProdutoID = p.ID




