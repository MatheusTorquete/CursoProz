# Triggers - Gatilhos

Neste repositório, você encontrará informações sobre triggers (gatilhos) em bancos de dados, como eles funcionam e exemplos de como eles podem ser utilizados para automatizar ações em resposta a eventos específicos.

## Conceito de Triggers

Um trigger é um objeto de banco de dados que é automaticamente acionado em resposta a eventos específicos, como uma inserção, atualização ou exclusão de registros em uma tabela. Eles podem ser usados para aplicar lógica de negócios complexa, manter a integridade dos dados ou registrar auditorias, entre outras finalidades.

## Tipos de Eventos Disparadores

Triggers podem ser acionados por diferentes tipos de eventos, geralmente classificados em:

- **DML Triggers**: Disparados por operações de manipulação de dados (Data Manipulation Language), como inserções, atualizações ou exclusões.

- **DDL Triggers**: Disparados por alterações na estrutura do banco de dados, como criação, alteração ou remoção de tabelas, colunas, etc.

## Momento de Execução

Os triggers também podem ser classificados pelo momento em que são executados:

- **FOR**: Acionados antes do evento (por exemplo, BEFORE INSERT).

- **AFTER**: Acionados após o evento (por exemplo, AFTER UPDATE).

- **INSTEAD OF**: Usados para manipular a ação em vez de executar a instrução original.

## Construção de Triggers

Um gatilho é construído com a sintaxe específica da linguagem SQL do banco de dados. 


```sql
DELIMITER //
CREATE TRIGGER nome_trigger
AFTER INSERT ON tabela
FOR EACH ROW
BEGIN
    -- Lógica do trigger aqui
END;
//
DELIMITER ;
```

## Exemplo de Trigger Insert

Aqui está um exemplo de trigger que é acionado após uma inserção na tabela "pessoas". 

Ele verifica se a data de nascimento é nula e, se for, insere um lembrete relacionado à pessoa recém-inserida:

```sql
DELIMITER $$
CREATE TRIGGER inserir_lembrete
AFTER INSERT
ON pessoas FOR EACH ROW
BEGIN
    IF NEW.dataNasc IS NULL THEN
        INSERT INTO lembrete(pessoaId, mensagem)
        VALUES (NEW.id, CONCAT('Oi, ', NEW.nome, ', atualize sua data de nascimento'));
    END IF;
END $$
```
.
