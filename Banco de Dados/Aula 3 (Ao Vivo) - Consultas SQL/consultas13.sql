-- Atores do gênero masculino e nome ‘William’, e atores do gênero masculino e sobrenome ‘Armstrong’
SELECT first_name,last_name
FROM actors
WHERE gender = 'M'
AND first_name = 'William'
AND last_name = 'Armstrong';