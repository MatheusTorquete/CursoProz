CREATE DATABASE ESCOLA;


USE ESCOLA;


CREATE TABLE ALUNO (
    ID INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(200),
    PRIMARY KEY (ID)
);

INSERT INTO ALUNO (nome, email, endereco)
VALUES
    ('João Silva', 'joao.silva@example.com', 'Rua das Flores, 123'),
    ('Maria Santos', 'maria.santos@example.com', 'Avenida Central, 456'),
    ('Pedro Oliveira', 'pedro.oliveira@example.com', 'Praça Principal, 789'),
    ('Ana Souza', 'ana.souza@example.com', 'Alameda das Árvores, 321'),
    ('José Almeida', 'jose.almeida@example.com', 'Estrada das Montanhas, 654');


    -- Criar a tabela Empréstimo
CREATE TABLE Emprestimo (
    codigo INT NOT NULL AUTO_INCREMENT,
    data_hora DATETIME,
    matric_aluno INT,
    data_devolucao DATE,
    PRIMARY KEY (codigo)
);

-- Inserir dados fictícios na tabela Empréstimo
INSERT INTO Emprestimo (data_hora, matric_aluno, data_devolucao)
VALUES
    ('2023-07-12 14:30:00', 123456, '2023-07-19'),
    ('2023-07-10 10:00:00', 654321, '2023-07-17'),
    ('2023-07-08 16:45:00', 987654, '2023-07-15'),
    ('2023-07-05 11:20:00', 789456, '2023-07-12'),
    ('2023-07-03 09:10:00', 456789, '2023-07-10');

-- Criar a tabela Livro_Emprestimo
CREATE TABLE Livro_Emprestimo (
    cod_livro INT,
    cod_emprestimo INT
);

-- Inserir dados fictícios na tabela Livro_Emprestimo
INSERT INTO Livro_Emprestimo (cod_livro, cod_emprestimo)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Criar a tabela Livro
CREATE TABLE Livro (
    cod_livro INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    cod_sessao INT,
    PRIMARY KEY (cod_livro)
);

-- Inserir dados fictícios na tabela Livro
INSERT INTO Livro (titulo, autor, cod_sessao)
VALUES
    ('Livro 1', 'Autor 1', 101),
    ('Livro 2', 'Autor 2', 102),
    ('Livro 3', 'Autor 3', 103),
    ('Livro 4', 'Autor 4', 104),
    ('Livro 5', 'Autor 5', 105);

-- Criar a tabela Sessão
CREATE TABLE Sessao (
    codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100),
    localizacao VARCHAR(100),
    PRIMARY KEY (codigo)
);

-- Inserir dados fictícios na tabela Sessão
INSERT INTO Sessao (descricao, localizacao)
VALUES
    ('Sessão 101', 'Prateleira A'),
    ('Sessão 102', 'Prateleira B'),
    ('Sessão 103', 'Prateleira C'),
    ('Sessão 104', 'Prateleira D'),
    ('Sessão 105', 'Prateleira E');



