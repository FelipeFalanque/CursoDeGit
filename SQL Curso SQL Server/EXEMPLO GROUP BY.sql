
/**/
SELECT * FROM clientes;
/**/

SELECT
p.num_ped,
p.data,
p.cod_cliente,
(SELECT c.cli_nome FROM clientes AS c WHERE c.cod_cli = p.cod_cliente) AS nom_cli
FROM pedidos AS p;

/**/
SELECT cod_cliente,
(SELECT c.cli_nome FROM clientes AS c WHERE c.cod_cli = p.cod_cliente) AS nom_cli,
SUM(total) AS tot_gas FROM pedidos AS p GROUP BY cod_cliente;

/**/

SELECT
c.cod_cli,
(SELECT ISNULL(SUM(p.total), 0) FROM pedidos AS p WHERE p.cod_cliente = c.cod_cli) AS total
FROM clientes AS c
GROUP BY cod_cli;
