-- • Atores do gênero masculino e sobrenome ‘Lloyd’, e atrizes de gênero feminino e nome ‘Emily’

SELECT first_name, last_name, gender
FROM actors
WHERE (gender = 'M' AND last_name = 'Lloyd')
OR (gender = 'F' AND first_name = 'Emily')
