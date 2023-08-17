-- Criação das tabelas e seus relacionamentos.
CREATE TABLE cliente (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(16) NOT NULL,
	sobrenome VARCHAR(24) NOT NULL,
	idade INT,
	pais VARCHAR(4)
);

CREATE TABLE produto (
	id INT PRIMARY KEY IDENTITY(1,1),
	item VARCHAR(48) NOT NULL,
	marca VARCHAR(24) NOT NULL
);

CREATE TABLE pedido (
	id INT PRIMARY KEY IDENTITY(1,1),
	fk_id_cliente INT NOT NULL,
	fk_id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
	CONSTRAINT fk_produto FOREIGN KEY (fk_id_produto) REFERENCES produto(id)
);

-- Inserindo os Dados
INSERT INTO cliente(nome, sobrenome, idade, pais)
VALUES ('Marcos', 'Alves', 40, 'BR'),
	   ('Matthew', 'Hugges', 30, 'US'),
	   ('Alana', 'Pereira', 25, 'ARG'),
	   ('Nilson', 'Torquete', 70, 'RU'),
	   ('Maria', 'Santos', 18, 'IT');

INSERT INTO produto (item, marca)
VALUES ('teclado', 'Logitech'),
	   ('mouse', 'HP'),
	   ('monitor', 'LG'),
	   ('mousepad', 'Logitech'),
	   ('CPU', 'DELL')

INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade)
VALUES (1, 4 , 200),
		(2, 4, 800),
		(3, 3, 100),
		(1, 1, 400),
		(4 , 2 , 1200);
