-- Nome e ranking dos filmes anteriores ao ano de 1970
SELECT name, rank
FROM movies
WHERE year < 1970;