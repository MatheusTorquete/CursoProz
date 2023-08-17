CREATE TABLE produto (
  ID SERIAL PRIMARY KEY,
  nome VARCHAR NOT NULL,
  preco FLOAT NOT NULL
  );
  
  INSERT INTO produto (nome, preco)
  VALUES ('bicicleta', 2150.90),
  		 ('tenis', 99.99),
         ('garrafa', 15.25);
  
  
  -- Aplicar uma função que aplique o desconto no preço em nossos produtos.
  CREATE OR REPLACE FUNCTION aplicar_desconto (preco FLOAT, desconto FLOAT)
  		RETURNS FLOAT AS $$
        BEGIN
        	RETURN preco * ( 1 - desconto);
        end;
     	$$ LANGUAGE PLPGSQL
  
  -- verificando a função primeiro o valor do produto, depois a porcentagem
  SELECT aplicar_desconto(150.90, 0.1)
  
  -- aplicando na nossa tabela produto 
  SELECT nome, aplicar_desconto(preco, 0.1) FROM produto
   