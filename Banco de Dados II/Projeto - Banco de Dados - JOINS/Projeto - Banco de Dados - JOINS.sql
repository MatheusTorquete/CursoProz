/* Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. 
Siga as instruções:
crie uma base de dados; 
crie tabelas nessa base de dados;
em cada tabela, adicione atributos;
insira dados em cada tabela;
utilize os comandos Joins para realizar consultas nas tabelas.*/

CREATE TABLE CLIENTE (
    cli_codigo INTEGER PRIMARY KEY IDENTITY,
    cli_nome VARCHAR (30),
	cli_sexo CHAR (1),
    cli_cpf CHAR(11) UNIQUE NOT NULL,
    cli_datanascimento DATE NOT NULL,
    cli_endereco VARCHAR (100) NOT NULL,
    cli_telefone VARCHAR (15),
    cli_email VARCHAR (30),
    cli_status BIT DEFAULT (1),
	dt_insert_linha SMALLDATETIME DEFAULT (SYSDATETIME())

CREATE TABLE PEDIDO (
    ped_numero INTEGER PRIMARY KEY IDENTITY,
    ped_datahora SMALLDATETIME DEFAULT (SYSDATETIME()),
    ped_datahorasaida SMALLDATETIME,
    ped_datahoraentrega SMALLDATETIME,
    ped_valorfrete SMALLMONEY,
	ped_status BIT DEFAULT (1),
    fk_cli_codigo INTEGER FOREIGN KEY REFERENCES CLIENTE(cli_codigo),
    fk_func_matricula INTEGER FOREIGN KEY REFERENCES FUNCIONARIO(func_matricula),
    fk_transp_codigo INTEGER FOREIGN KEY REFERENCES TRANSPORTADORA(transp_codigo),
	dt_insert_linha SMALLDATETIME DEFAULT (SYSDATETIME())

CREATE TABLE PRODUTO (
    prod_codigo INTEGER PRIMARY KEY IDENTITY,
    prod_nome VARCHAR (100) NOT NULL,
    prod_precounitario SMALLMONEY NOT NULL,
    prod_quantidadeestoque SMALLINT,
    prod_status BIT DEFAULT (1),
    fk_categ_codigo INTEGER FOREIGN KEY REFERENCES CATEGORIA (categ_codigo),
    fk_forn_codigo INTEGER FOREIGN KEY REFERENCES FORNECEDOR(forn_codigo),
	dt_insert_linha SMALLDATETIME DEFAULT (SYSDATETIME())

CREATE TABLE PEDIDO_PRODUTO (
	pedprod_codigo INTEGER PRIMARY KEY IDENTITY,
	pedprod_precovenda SMALLMONEY NOT NULL,
    pedprod_quantidadeitensvendidos SMALLINT DEFAULT (1),
    fk_ped_numero INTEGER FOREIGN KEY REFERENCES PEDIDO (ped_numero),
    fk_prod_codigo INTEGER FOREIGN KEY REFERENCES PRODUTO (prod_codigo),
	dt_insert_linha SMALLDATETIME DEFAULT (SYSDATETIME())



Junção de 2 tabelas: 
select
     c.cli_codigo,
     c.cli_nome,
     p.ped_numero,
     p.ped_datahora
 from cliente as c
 inner join pedido as p
     on c.cli_codigo = p.fk_cli_codigo

Junção de 3 tabelas: 
select
     c.cli_codigo,
     c.cli_nome,
     p.ped_numero,
     p.ped_datahora,
     t.transp_codigo,
     t.transp_nome,
     t.transp_cnpj
 from cliente as c
 inner join pedido as p
     on c.cli_codigo = p.fk_cli_codigo
 inner join transportadora as t
     on p.fk_transp_codigo = t.transp_codigo


Junção de 4 tabelas:
select
    c.cli_codigo,
    c.cli_nome,
    p.ped_numero,
    p.ped_datahora,
    prd.prod_codigo,
    prd.prod_nome,
    prd.prod_precounitario,
    pp.pedprod_precovenda,
    pp.pedprod_quantidadeitensvendidos,
    (pp.pedprod_precovenda * pp.pedprod_quantidadeitensvendidos) as subtotal
from cliente as c
inner join pedido as p
    on c.cli_codigo = p.fk_cli_codigo
inner join pedido_produto as pp
    on pp.fk_ped_numero = p.ped_numero
inner join produto as prd
    on pp.fk_prod_codigo = prd.prod_codigo

				 				 				
Denunciar este anúncio
LEFT JOIN:
select
      c.cli_codigo,
      c.cli_nome,
      p.ped_numero,
      p.ped_datahora
  from cliente as c
  left join pedido as p
      on c.cli_codigo = p.fk_cli_codigo

LEFT JOIN EXCLUSIVO:
select
      c.cli_codigo,
      c.cli_nome,
      p.ped_numero,
      p.ped_datahora
  from cliente as c
  left join pedido as p
      on c.cli_codigo = p.fk_cli_codigo
 where p.fk_cli_codigo is null

RIGHT JOIN:

select
      p.ped_numero,
      p.ped_datahora,
      t.transp_codigo,
      t.transp_nome
  from pedido as p
  right join transportadora as t
      on p.fk_transp_codigo = t.transp_codigo

RIGHT JOIN EXCLUSIVO:
select
      p.ped_numero,
      p.ped_datahora,
      t.transp_codigo,
      t.transp_nome
  from pedido as p
  right join transportadora as t
      on p.fk_transp_codigo = t.transp_codigo
 where p.fk_transp_codigo is null

FULL JOIN:
select
    p.prod_codigo,
    p.prod_nome,
    p.prod_precounitario,
    p.prod_quantidadeestoque,
    c.categ_codigo,
    c.categ_descricao
from produto as p
full join categoria as c
    on p.fk_categ_codigo = c.categ_codigo

FULL JOIN EXCLUSIVO:
select 
     p.prod_codigo,
     p.prod_nome,
     p.prod_precounitario,
     p.prod_quantidadeestoque,
     c.categ_codigo,
     c.categ_descricao
 from produto as p
 full join categoria as c
     on p.fk_categ_codigo = c.categ_codigo
 where p.fk_categ_codigo is null
 or c.categ_codigo is null








