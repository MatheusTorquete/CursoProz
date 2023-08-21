# Rotinas de Banco de Dados: Funções e Procedimentos

Nossos bancos de dados têm tarefas recorrentes e cruciais, assim como nossas atividades diárias, como esvaziar o lixo ou arrumar a cama. 
Essas rotinas no mundo dos bancos de dados são conhecidas como funções e procedimentos.

## Funções

As funções são rotinas armazenadas que executam uma ação específica e retornam um valor como resultado. Para criar uma função, é necessário entender sua sintaxe básica:

```sql
CREATE FUNCTION nome_função (parâmetros)
RETURNS tipos_dados
Código_da_funcao;
```

- **nome_função**: Nome da função que você está criando.
- **parâmetros**: Entradas para a função.
- **tipos_dados**: Tipo de dados que a função retornará.
- **Código_da_funcao**: Lógica que a função executará.

Exemplo de criação de função:

```sql
CREATE FUNCTION calcular_mult(a DECIMAL(4,2), b INT)
RETURNS INT
DETERMINISTIC
RETURN a * b;
```

## Procedimentos

Os procedimentos são similares às funções, mas podem não retornar um valor. Eles executam ações, processos ou tarefas específicas.

Para excluir uma função ou procedimento, você pode usar o comando:

```sql
DROP FUNCTION nome_função;
```

## Exemplo de Uso

Suponha que queremos excluir a função `calcular_mult`:

```sql
DROP FUNCTION calcular_mult;
```
