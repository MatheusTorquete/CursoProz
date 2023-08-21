# Projeto de Segurança de Dados Confidenciais

Este projeto aborda a segurança de informações sensíveis, garantindo que apenas indivíduos autorizados tenham acesso aos dados.

## Princípios de Segurança

Para proteger os dados confidenciais, adotamos os seguintes princípios:

### Criptografia

Utilizamos criptografia para garantir que os dados estejam protegidos mesmo em caso de acesso não autorizado. Isso é alcançado por meio de:

- **Chave Mestra:** Raiz hierárquica do SQL, essencial para gerenciar as chaves de criptografia.
- **Certificado:** Responsável por proteger chaves simétricas e assimétricas.
- **Chave Simétrica:** Utilizada para criptografar e descriptografar dados.

## Exemplo de Criptografia na Prática

A seguir, apresentamos um exemplo de como implementar criptografia em uma tabela de usuários:

```sql
-- Criação da tabela de usuários
CREATE TABLE usuario (
	ID INT SERIAL,
  	LOGIN VARCHAR(MAX),
  	SENHA VARBINARY(MAX)
);

-- Criação da chave mestra
CREATE MASTER KEY 
ENCRYPTED BY PASSWORD = 'PASSWORD@123';

-- Criação do certificado para proteção das chaves
CREATE CERTIFICATE Certificado
ENCRYPTED BY PASSWORD = 'SENHA@123'
WITH SUBJECT = 'Certificado Senha Usuario';

-- Criação da chave simétrica para criptografia de senhas
CREATE SYMMETRIC KEY ChaveSenha
WITH ALGORITHM = AES_256
ENCRYPTED BY CERTIFICATE Certificado;

-- Verificando as chaves e certificados criados
SELECT * FROM sys.symmetric_keys;
SELECT * FROM sys.certificates;
```
