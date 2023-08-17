/*
Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes. 
Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.
*/
CREATE OR REPLACE FUNCTION somar_clientes(data_referencia DATE)
RETURNS INTEGER
AS $$
DECLARE
    total_clientes INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE data_cadastro = data_referencia;
    
    RETURN total_clientes;
END;
$$ LANGUAGE plpgsql;

-- só colocar a data desejada.
SELECT somar_clientes('2023-07-12'); 
