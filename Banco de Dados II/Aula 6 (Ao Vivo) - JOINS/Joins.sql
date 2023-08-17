-- Join, trazendo informação de 2 tabelas por meio da chave estrangeira
SELECT * FROM pedido as P
INNER JOIN cliente as C
ON p.fk_id_cliente = c.id;


-- right join , traz todos os dados do lado direito e o restante em comum.
SELECT * FROM pedido as P
RIGHT JOIN cliente as C
ON p.fk_id_cliente = c.id;

-- left join
SELECT * FROM pedido as P
LEFT JOIN cliente as C
ON p.fk_id_cliente = c.id;



-- desafio trazendo ambos id's e alterar os nomes
SELECT p.id as id_pedido, p.quantidade, c.id as id_cliente, c.nome, c.idade
FROM pedido as P
INNER JOIN cliente as C
ON p.fk_id_cliente = c.id;


-- Desafio 3 Join's trazendo as informações de pedido, cliente e produto, alterando os nomes das colunas
SELECT p.id AS id_pedido, p.quantidade, c.id AS id_cliente, c.nome, c.idade, po.id AS id_produto, po.item
FROM pedido AS P
RIGHT JOIN cliente AS C
ON p.fk_id_cliente = c.id
RIGHT JOIN produto AS PO
ON p.fk_id_cliente = po.id