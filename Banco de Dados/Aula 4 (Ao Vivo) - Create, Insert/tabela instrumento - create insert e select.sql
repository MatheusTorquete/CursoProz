-- Create 
CREATE TABLE instrumento (
	id_instrumento SERIAL PRIMARY KEY,
  	nome VARCHAR(24) NOT NULL,
  	preco FLOAT NOT NULL,
  	em_promocao BOOLEAN
)

-- Insert 
INSERT INTO instrumento 
	(nome, preco, em_promocao)
 VALUES
 	('violão', 299.99, TRUE)
    
   -- Selecionando tudo
  SELECT * FROM instrumento