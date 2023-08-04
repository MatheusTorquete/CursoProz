-- nome e ano dos filmes com ranking maior ou igual do que 7.5
SELECT name, rank
FROM movies
WHERE rank >= 7.5;