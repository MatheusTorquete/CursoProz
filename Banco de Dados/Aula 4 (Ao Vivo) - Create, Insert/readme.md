# Consultas e Operações SQL


## Criar Tabela `instrumento`

```sql
CREATE TABLE instrumento (
    id_instrumento SERIAL PRIMARY KEY,
    nome VARCHAR(24) NOT NULL,
    preco FLOAT NOT NULL,
    em_promocao BOOLEAN
);
```

## Inserir Dados na Tabela `instrumento`

```sql
INSERT INTO instrumento 
    (nome, preco, em_promocao)
 VALUES
    ('Guitarra', 399.99, FALSE),
    ('Bateria', 899.99, TRUE),
    ('Flauta', 53.88, TRUE),
    ('Violão', 299.99, TRUE);
```

## Selecionar Dados da Tabela `instrumento`

```sql
SELECT * FROM instrumento;
```

## Criar Tabela `vendedor`

```sql
CREATE TABLE vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    nome_vendedor VARCHAR(50) NOT NULL,
    data_venda DATE
);
```

## Inserir Dados na Tabela `vendedor`

```sql
INSERT INTO vendedor 
    (nome_vendedor, data_venda)
 VALUES
    ('Juliana', '2022-02-10'),
    ('Roberto', '2020-01-11'),
    ('Ana', '2019-10-10'),
    ('Matheus', '2018-02-02');
```

## Selecionar Dados da Tabela `vendedor`

```sql
SELECT * FROM vendedor;
```
