# Consultas e Operações SQL

## Criação da Tabela `musica`

```sql
CREATE TABLE musica (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL
);
```

## Inserção de Dados na Tabela `musica`

```sql
INSERT INTO musica (nome, duracao_seg)
VALUES
    ('Te amo Jesus', 200),
    ('Rei Adorado', 300),
    ('Só tu es Rei', 400);
```

## Criação de Chave Estrangeira na Tabela `musica`

```sql
ALTER TABLE musica
ADD COLUMN fk_artista INT,
ADD CONSTRAINT fk_artista FOREIGN KEY (fk_artista) REFERENCES artista(id);
```

## Exclusão da Chave Estrangeira na Tabela `musica`

```sql
ALTER TABLE musica
DROP CONSTRAINT fk_artista;
```

## Alteração da Regra de Exclusão na Tabela `musica`

```sql
ALTER TABLE musica
ADD CONSTRAINT fk_artista
FOREIGN KEY (fk_artista)
ON DELETE CASCADE;
REFERENCES artista(ID);
```

## Atualização de Dados na Tabela `musica`

```sql
UPDATE musica
SET album_id = 1
WHERE id = 1;
```

## Criação da Tabela `artista`

```sql
CREATE TABLE artista (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR UNIQUE
);
```

## Inserção de Dados na Tabela `artista`

```sql
INSERT INTO artista (nome)
VALUES
    ('Anitta'),
    ('Isa'),
    ('Melody');
```

## Criação da Tabela `gravacao`

```sql
CREATE TABLE gravacao (
    ID SERIAL PRIMARY KEY,
    duracao_seg INT NOT NULL
);
```

## Exclusão da Tabela `gravacao`

```sql
DROP TABLE gravacao;
```

## Adição de Coluna na Tabela `musica`

```sql
ALTER TABLE musica ADD COLUMN duracao_seg INT NOT NULL;
```

## Criação da Tabela `album`

```sql
CREATE TABLE album (
    ID SERIAL PRIMARY KEY,
    editora VARCHAR NOT NULL
);
```

## Adição de Colunas na Tabela `album`

```sql
ALTER TABLE album
ADD COLUMN titulo VARCHAR NOT NULL,
ADD COLUMN ano_lancamento INT,
ADD COLUMN genero VARCHAR;
```

## Inserção de Dados na Tabela `album`

```sql
INSERT INTO album (editora, titulo, ano_lancamento, genero)
VALUES
    ('Editora 1', 'Álbum 1', 2020, 'Rock'),
    ('Editora 2', 'Álbum 2', 2018, 'Pop'),
    ('Editora 3', 'Álbum 3', 2019, 'Hip Hop');
```
