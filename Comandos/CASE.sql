SELECT * FROM tabela_de_clientes;
SELECT estado, limite_de_credito from tabela_de_clientes;
SELECT estado, sum(limite_de_credito) as Limite_total from tabela_de_clientes group by estado;
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;
SELECT EMBALAGEM, count(*) AS TOTAL FROM tabela_de_produtos GROUP BY EMBALAGEM;
SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM TABELA_DE_CLIENTES 
WHERE CIDADE = 'RIO DE JANEIRO' GROUP BY BAIRRO order by LIMITE;
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA FROM tabela_de_clientes 
GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) > 900000;

select nome_do_produto, preco_de_lista,
case 
when preco_de_lista >= 12 then 'Produto Caro'
when preco_de_lista >= 7 and preco_de_lista < 12 then 'Em Conta'
Else 'Produto Barato' end as Status_Preco from tabela_de_produtos;

select EMBALAGEM,
case 
when preco_de_lista >= 12 then 'Produto Caro'
when preco_de_lista >= 7 and preco_de_lista < 12 then 'Em Conta'
Else 'Produto Barato' end as Status_Preco, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
from tabela_de_produtos GROUP BY EMBALAGEM,
case 
when preco_de_lista >= 12 then 'Produto Caro'
when preco_de_lista >= 7 and preco_de_lista < 12 then 'Em Conta'
Else 'Produto Barato' end order by embalagem;