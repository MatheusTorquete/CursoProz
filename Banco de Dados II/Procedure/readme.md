# Procedimentos em Bancos de Dados

Este guia oferece uma introdução aos procedimentos em bancos de dados. 
Procedimentos são blocos de instruções que realizam tarefas específicas e podem ser chamados para execução.

## Criando um Procedimento

A sintaxe básica para criar um procedimento é a seguinte:

```sql
CREATE PROCEDURE nome_procedimento (parâmetros)
BEGIN
    declarações;
END;
```

Aqui está um exemplo mais detalhado:

```sql
CREATE PROCEDURE saberPreço (alimento smallint)
BEGIN
    SELECT CONCAT('O valor é ', preço) AS preços
    FROM tabela_alimento
    WHERE id_alimento = alimento;
END;
```

Neste exemplo, o procedimento `saberPreço` recebe um parâmetro `alimento` e exibe o preço correspondente da tabela `tabela_alimento`.

## Excluindo um Procedimento

Para excluir um procedimento, utilize o seguinte comando:

```sql
DROP PROCEDURE nome_procedimento;
```

Por exemplo, para excluir o procedimento `saberPreço`, execute:

```sql
DROP PROCEDURE saberPreço;
```

## Diferenças entre Procedimentos e Funções

As principais diferenças entre procedimentos e funções são:

- **Retorno de Valor:** As funções sempre retornam um valor, enquanto os procedimentos podem ou não retornar um valor.
- **Parâmetros:** As funções podem receber parâmetros de entrada e saída, enquanto os procedimentos requerem parâmetros de entrada e saída.
- **Chamada em Funções:** Funções podem ser chamadas dentro de um procedimento, mas procedimentos não podem ser chamados dentro de funções.

Compreender como criar e usar procedimentos é valioso para organizar e executar tarefas complexas de maneira eficaz em bancos de dados.
