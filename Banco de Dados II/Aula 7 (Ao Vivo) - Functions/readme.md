 # Projeto SQL - Funções

Neste projeto SQL, foram desenvolvidas três funções para realizar diferentes cálculos e transformações em um banco de dados de produtos.

## Função Soma

A função `soma(num1 INT, num2 INT)` realiza a adição de dois números inteiros e retorna o resultado. É utilizada da seguinte forma:

```sql
SELECT soma(20, 20);
```

## Função Subtração

A função `sub(num1 INT, num2 INT)` realiza a subtração de dois números inteiros e retorna o resultado. Pode ser utilizada da seguinte forma:

```sql
SELECT sub(50, 20);
```

## Função Aplicar Desconto

A função `aplicar_desconto(preco FLOAT, desconto FLOAT)` é utilizada para aplicar um desconto a um determinado preço, retornando o novo preço com desconto aplicado. É utilizada da seguinte forma:

```sql
SELECT aplicar_desconto(150.90, 0.1);
```

Além disso, essa função pode ser aplicada diretamente na tabela de produtos para calcular preços com desconto:

```sql
SELECT nome, aplicar_desconto(preco, 0.1) FROM produto;
```



.
