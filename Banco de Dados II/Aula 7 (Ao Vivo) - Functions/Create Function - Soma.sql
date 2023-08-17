-- Criando com or replace, para futuramente conseguir alterar.
CREATE OR REPLACE FUNCTION soma (num1 INT, num2 INT)
	RETURNS INT AS $$
    begin 
    	RETURN num1 + num2 + num2;
       END
       $$ LANGUAGE PLPGSQL
  -- verificando a função     
  SELECT soma(20 , 20)