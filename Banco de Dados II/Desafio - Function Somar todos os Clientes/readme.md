# Projeto de Controle de Cadastro de Clientes e Vendas

Este projeto é voltado para uma loja que mantém um banco de dados abrangendo o controle de vendas e cadastros de clientes. Uma função foi criada para somar o número de clientes cadastrados em um determinado dia.

## Função de Soma de Clientes

Para obter o número de clientes cadastrados em um dia específico, utilizamos a seguinte função:

```sql
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
```

## Uso da Função

A função `somar_clientes` pode ser utilizada passando a data de referência como argumento. Por exemplo:

```sql
-- Exemplo de uso da função, passando a data desejada
SELECT somar_clientes('2023-07-12');
```

Essa consulta retornará o número total de clientes cadastrados na loja no dia especificado.
