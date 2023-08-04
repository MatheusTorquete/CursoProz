-- • Filmes com lançados antes do ano 1960 com ranking maior do que 8.5, e filmes lançados dpois do ano 2000 com ranking menor do que 6
SELECT name, year, rank
FROM movies
WHERE (year < 1960 AND rank > 8.5)
OR (year > 2000 AND rank < 6)