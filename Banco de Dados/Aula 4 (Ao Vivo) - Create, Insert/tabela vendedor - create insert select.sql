CREATE TABLE vendedor (
	id_vendedor SERIAL PRIMARY KEY,
  	nome_vendedor VARCHAR(50) NOT NULL,
  	data_venda DATE
)


INSERT INTO vendedor 
	(nome_vendedor, data_venda)
 VALUES
 	('Juliana', '2022-02-10'),
    ('Roberto', '2020-01-11'),
    ('Ana', '2019-10-10'),
    ('Matheus', '2018-02-02')
    
    SELECT * FROM vendedor