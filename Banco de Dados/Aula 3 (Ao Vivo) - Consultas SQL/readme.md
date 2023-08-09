# Consultas SQL


## Filmes Lançados em 1968

```sql
SELECT * FROM movies
WHERE year = 1968;
```

## Filmes com Ranking Menor que 5

```sql
SELECT * FROM movies
WHERE rank < 5;
```

## Diretor com Nome Stanley

```sql
SELECT * FROM directors
WHERE first_name = 'Stanley';
```

## Atrizes do Gênero 'F'

```sql
SELECT * FROM actors
WHERE gender = 'F';
```

## Atrizes do Gênero 'F' com Nome 'Anne'

```sql
SELECT * FROM actors
WHERE gender = 'F'
AND first_name = 'Anne';
```

## Ator do Gênero 'M' com Sobrenome 'Campbell'

```sql
SELECT * FROM actors
WHERE gender = 'M'
AND last_name = 'Campbell';
```

## Nome e Sobrenome das Atrizes do Gênero Feminino

```sql
SELECT first_name, last_name
FROM actors
WHERE gender = 'F';
```

## Nome e Ano dos Filmes com Ranking Maior ou Igual a 7.5

```sql
SELECT name, year
FROM movies
WHERE rank >= 7.5;
```

## Atores do Gênero Masculino com Nome 'William' e Atores do Gênero Masculino com Sobrenome 'Armstrong'

```sql
SELECT first_name, last_name
FROM actors
WHERE gender = 'M'
AND (first_name = 'William' OR last_name = 'Armstrong');
```

## Filmes Lançados Antes de 1960 com Ranking Maior que 8.5 e Filmes Lançados Depois de 2000 com Ranking Menor que 6

```sql
SELECT name, year, rank
FROM movies
WHERE (year < 1960 AND rank > 8.5)
OR (year > 2000 AND rank < 6);
```

Este README oferece uma visão resumida das consultas realizadas, destacando os critérios e condições aplicados para recuperar os dados desejados.
