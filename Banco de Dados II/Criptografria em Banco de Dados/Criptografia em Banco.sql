/*
Informações confidenciais, para garantirmos a segurançaproduto
Utilizamos a criptografia, altera o material, e só o que tem a disponibilidade pode ver.produto
Hierarquia
Chave mestra - Raiz hieraquica do SQL
Certificado - Responsável por proteger as chaves simetrica e assimetrica 
Chave simétrica - para criptografar ou descriptografar. 
*/

-- Exemplo da criptografia na prática

CREATE TABLE  usuario (
	ID INT SERIAL,
  	LOGIN VARCHAR(MAX),
  	SENHA VARBINARY(MAX)

);

-- Criação
CREATE MASTER KEY 
ENCRYPTED BY PASSWORD = 'PASSWORD@123';
CREATE CERTIFICATE Certificado
ENCRYPTED BY PASSWORD = 'SENHA@123'
WITH SUBJECT = 'Certificado Senha Usuario';
CREATE SYMMETRIC KEY ChaveSenha
WITH ALGORITHM = AES_256
ENCRYPTED BY CERTIFICATE Certificado;

-- verificando
SELECT * FROM sys.symmetric_keys;
SELECT * FROM sys.certificates;
