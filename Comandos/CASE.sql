SELECT * FROM tabela_de_clientes;

SELECT estado, limite_de_credito FROM tabela_de_clientes;

SELECT estado, sum(limite_de_credito) AS Limite_total FROM tabela_de_clientes GROUP BY estado;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT EMBALAGEM, count(*) AS TOTAL FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM TABELA_DE_CLIENTES 
WHERE CIDADE = 'RIO DE JANEIRO' GROUP BY BAIRRO ORDER BY LIMITE;
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA FROM tabela_de_clientes 
GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) > 900000;

SELECT nome_do_produto, preco_de_lista,
CASE 
WHEN preco_de_lista >= 12 THEN 'Produto Caro'
WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'Em Conta'
ELSE 'Produto Barato' END AS Status_Preco FROM tabela_de_produtos;

SELECT EMBALAGEM,
CASE 
WHEN preco_de_lista >= 12 THEN 'Produto Caro'
WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'Em Conta'
ELSE 'Produto Barato' END AS Status_Preco, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos GROUP BY EMBALAGEM,
CASE 
WHEN preco_de_lista >= 12 THEN 'Produto Caro'
WHEN preco_de_lista >= 7 AND preco_de_lista < 12 THEN 'Em Conta'
ELSE 'Produto Barato' END ORDER BY embalagem;