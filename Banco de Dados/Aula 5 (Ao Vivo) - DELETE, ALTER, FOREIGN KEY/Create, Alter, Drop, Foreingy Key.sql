CREATE TABLE musica (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR NOT NULL
)

INSERT INTO
musica (nome, duracao_seg)
VALUES
('Te amo Jesus', 200),
('Rei Adorado', 300),
('Só tu es Rei', 400)

-- criacao de fk
ALTER TABLE musica
ADD COLUMN fk_artista INT,
ADD CONSTRAINT fk_artista FOREIGN KEY (fk_artista) REFERENCES artista(id)

-- excluindo
ALTER TABLE musica
DROP CONSTRAINT fk_artista

-- alterando a regra, caso algum registro da tabela artista for excluido
-- será deletado as musicas que tenha references
ALTER TABLE musica
ADD CONSTRAINT fk_artista
FOREIGN KEY (fk_artista)
ON DELETE CASCADE;
REFERENCES artista(ID)

--
SELECT * FROM musica

-- atualizando
UPDATE musica
SET album_id = 1
WHERE id = 1

/*
UPDATE musica
SET fk_artista = 1
WHERE id = 1

UPDATE musica
SET fk_artista = 2
WHERE id = 2

UPDATE musica
SET fk_artista = 3
WHERE id = 3
*/

CREATE TABLE artista (
	ID SERIAL PRIMARY KEY,
  	nome VARCHAR UNIQUE
)

INSERT INTO
artista (nome)
VALUES
('Anitta'),
('Isa'),
('Melody')

SELECT * FROM artista

-- agora se deletarmos aqui, será deletado na musica tb porque eles estão ligados
DELETE FROM artista
WHERE nome = 'Gabigol'

CREATE TABLE gravacao (
	ID SERIAL PRIMARY KEY,
  	duracao_seg INT NOT NULL
)

DROP TABLE gravacao

ALTER TABLE musica ADD COLUMN
duracao_seg INT NOT NULL


-- Criar a tabela album
CREATE TABLE album (
    ID SERIAL PRIMARY KEY,
    editora VARCHAR NOT NULL
);

-- Adicionar campo da chave estrangeira na tabela musica
ALTER TABLE musica
ADD COLUMN album_id INT,
ADD CONSTRAINT fk_album
FOREIGN KEY (album_id) REFERENCES album (ID);


-- Alterar a tabela album para adicionar três campos
ALTER TABLE album
ADD COLUMN titulo VARCHAR NOT NULL,
ADD COLUMN ano_lancamento INT,
ADD COLUMN genero VARCHAR;


-- Inserir três valores fictícios na tabela album
INSERT INTO album (editora, titulo, ano_lancamento, genero)
VALUES
    ('Editora 1', 'Álbum 1', 2020, 'Rock'),
    ('Editora 2', 'Álbum 2', 2018, 'Pop'),
    ('Editora 3', 'Álbum 3', 2019, 'Hip Hop');
    
    SELECT * FROM album

