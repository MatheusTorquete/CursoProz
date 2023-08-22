# Projeto de Banco de Dados e Consultas com Junções

Este projeto envolve a criação de um banco de dados para gerenciar informações de clientes, pedidos e produtos. 
As tabelas criadas são:

1. **CLIENTE:**
   - Campos para nome, sexo, CPF, data de nascimento, endereço, telefone, e-mail e status.
   - Relacionado aos pedidos realizados.

2. **PEDIDO:**
   - Campos para número, datas de realização, saída e entrega, valor de frete e status.
   - Relacionado ao cliente, funcionário e transportadora.

3. **PRODUTO:**
   - Campos para nome, preço unitário, quantidade em estoque e status.
   - Relacionado à categoria e fornecedor.

4. **PEDIDO_PRODUTO:**
   - Campos para preço de venda, quantidade de itens vendidos.
   - Relacionado ao pedido e produto.

**Consultas Demonstradas:**

1. **Junções Simples:**
   - Utilização de INNER JOIN para obter informações de clientes e pedidos relacionados.
   - LEFT JOIN para mostrar clientes mesmo sem pedidos.
   - RIGHT JOIN para mostrar pedidos mesmo sem clientes.

2. **Junções Múltiplas:**
   - Combinação de três tabelas com INNER JOIN para obter detalhes de clientes, pedidos e transportadoras.

3. **Junções com Cálculos:**
   - Utilização de junções para calcular subtotal de pedidos e produtos vendidos.

4. **Junções Exclusivas:**
   - LEFT JOIN exclusivo para encontrar clientes sem pedidos.
   - RIGHT JOIN exclusivo para encontrar pedidos sem clientes.

5. **Junções Completas:**
   - Utilização de FULL JOIN para obter informações de produtos e categorias.

**Resumo:**

Este projeto demonstra a criação de um banco de dados com tabelas interligadas e a realização de consultas complexas com junções para obter informações detalhadas e relacionadas entre clientes, pedidos e produtos. As consultas também incluem cálculos e junções exclusivas para filtragem específica. 
Isso é útil para gerenciar eficientemente informações em um ambiente de negócios.
