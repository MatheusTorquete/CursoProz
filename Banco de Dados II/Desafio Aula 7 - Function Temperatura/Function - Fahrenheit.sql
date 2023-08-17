-- Crie a tabela tempetura, criar uma função chamada converter_celsius_para_farehint que aceite um parametro de entrada ( a temperatura em celsius) e retorna a temperatura em farehint, 
-- o cálculo é o seguinte, Fahreint = (Celsius * 9/5) + 32
CREATE TABLE temperaturas (
  ID SERIAL PRIMARY KEY,
  celsius FLOAT NOT NULL
  );
   -- inserindo dados teste
   INSERT INTO temperaturas (celsius) VALUES (25);
	INSERT INTO temperaturas (celsius) VALUES (10);

  
  -- criando a função
 CREATE OR REPLACE FUNCTION converter_celsius_para_fahrenheit(celsius FLOAT)
	RETURNS FLOAT AS $$
	BEGIN
  		RETURN (celsius * 9/5) + 32;
	END;
	$$ LANGUAGE plpgsql;
    
    -- testando a função
    SELECT celsius, converter_celsius_para_fahrenheit(celsius) as fahrenheit FROM temperaturas;

