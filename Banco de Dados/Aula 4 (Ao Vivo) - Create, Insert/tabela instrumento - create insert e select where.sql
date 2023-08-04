-- Create a tabela
CREATE TABLE instrumento (
	id_instrumento SERIAL PRIMARY KEY,
  	nome VARCHAR(24) NOT NULL,
  	preco FLOAT NOT NULL,
  	em_promocao BOOLEAN
)

-- Inserindo dados
INSERT INTO instrumento 
	(nome, preco, em_promocao)
 VALUES
 	('Guitarra', 399.99, FALSE),
    ('Bateria', 899.99, TRUE),
    ('Flauta', 53.88, TRUE)
    
   -- Selecionando dados

  
  /* desafios 
  1) campos em_promocao, id e preco dos registros em que o preço é maior que 150
	SELECT id_instrumento, preco FROM instrumento
  WHERE (preco > 150) and em_promocao = TRUE

2)  todos os campos dos registros dos intrumentos que estao em promoção
SELECT * FROM instrumento
  WHERE em_promocao = TRUE

3) nome e preço do registro que tem id 4
  SELECT nome, preco FROM instrumento
  WHERE id_instrumento = 4

4)id, preco e em_promocao do registro em que o nome é 'violão'
SELECT id_instrumento, preco, em_promocao
FROM instrumento
WHERE nome = 'violão'
*/
