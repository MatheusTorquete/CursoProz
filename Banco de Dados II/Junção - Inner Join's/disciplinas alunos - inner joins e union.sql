-- CREATE DATABASE CursoProgamacao;

 CREATE TABLE DISCIPLINAS (
	ID_DISCIPLINA INT AUTO_INCREMENT PRIMARY KEY,
  	NOME_DISCIPLINA VARCHAR(50) NOT NULL,
  NOME_PROFESSOR VARCHAR(50) NOT NULL
);

CREATE TABLE alunos (
	id_alunos INT AUTO_INCREMENT PRIMARY KEY,
  	nome_alunos VARCHAR(50) NOT NULL,
  	disciplinas_id INT,
  	CONSTRAINT FOREIGN KEY (disciplinas_id)
  	REFERENCES disciplinas (id_disciplina)
);


INSERT INTO disciplinas(NOME_DISCIPLINA, NOME_PROFESSOR)
VALUES ('BANCO DE DADOS', 'Maria Alves');

INSERT INTO disciplinas(NOME_DISCIPLINA, NOME_PROFESSOR)
VALUES ('Python', 'Pietro Souza');

INSERT INTO disciplinas(NOME_DISCIPLINA, NOME_PROFESSOR)
VALUES ('POO', 'Bia Tavares');

-- SELECT * FROM disciplinas

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Cleiton', 2);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Carol', NULL);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Ruan', 2);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Gabi', 1);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Rian', NULL);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('MIA', 2);

INSERT INTO alunos(nome_alunos, disciplinas_id)
VALUES ('Malu', 1);

-- todos os dados
SELECT nome_alunos, NOME_DISCIPLINA FROM alunos
INNER JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id

-- left join lado esquerdo
SELECT nome_alunos, NOME_DISCIPLINA FROM alunos
LEFT JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id


-- right join lado direito
SELECT nome_alunos, NOME_DISCIPLINA FROM alunos
right JOIN disciplinas
ON disciplinas.id_disciplina = alunos.disciplinas_id


-- união
SELECT nome_alunos, NOME_DISCIPLINA FROM alunos
alunos left join DISCIPLINAS
UNION
select nome_alunos, NOME_DISCIPLINA from DISCIPLINAS
alunos right join DISCIPLINAS
on DISCIPLINAS.id_disciplina = alunos.disciplinas_id
