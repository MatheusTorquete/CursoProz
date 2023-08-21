# Projeto de Conversão de Temperaturas

Este projeto envolve a criação de uma tabela para armazenar temperaturas em graus Celsius e a criação de uma função para converter essas temperaturas para graus Fahrenheit.

## Tabela de Temperaturas

Primeiro, a tabela `temperaturas` foi criada para armazenar as temperaturas em graus Celsius:

```sql
CREATE TABLE temperaturas (
  ID SERIAL PRIMARY KEY,
  celsius FLOAT NOT NULL
);
```

Foram inseridos alguns dados de exemplo na tabela:

```sql
-- Inserindo dados teste
INSERT INTO temperaturas (celsius) VALUES (25);
INSERT INTO temperaturas (celsius) VALUES (10);
```

## Função de Conversão Celsius para Fahrenheit

Em seguida, foi criada uma função chamada `converter_celsius_para_fahrenheit` que aceita uma temperatura em graus Celsius como parâmetro e retorna a temperatura equivalente 
em graus Fahrenheit:

```sql
CREATE OR REPLACE FUNCTION converter_celsius_para_fahrenheit(celsius FLOAT)
RETURNS FLOAT AS $$
BEGIN
    RETURN (celsius * 9/5) + 32;
END;
$$ LANGUAGE plpgsql;
```

## Testando a Função

A função pode ser testada utilizando a consulta abaixo, que mostra as temperaturas em graus Celsius e os seus equivalentes em graus Fahrenheit:

```sql
-- Testando a função
SELECT celsius, converter_celsius_para_fahrenheit(celsius) as fahrenheit FROM temperaturas;
```

Este projeto demonstra como criar uma tabela para armazenar temperaturas e criar uma função para converter essas temperaturas para outra escala, nesse caso, de Celsius para Fahrenheit. 
A aplicação real pode incluir mais funcionalidades e integrações para atender às necessidades específicas de conversão de temperaturas.
