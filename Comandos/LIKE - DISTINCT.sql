select * from tabela_de_produtos where sabor like '%maça%';

select * from tabela_de_produtos where sabor like '%maça%' and EMBALAGEM = 'pet';

select * from tabela_de_clientes where nome like '%Mattos';

select distinct embalagem, sabor, tamanho from tabela_de_produtos where sabor = 'laranja';

select * from tabela_de_clientes where cidade = 'rio de janeiro' and PRIMEIRA_COMPRA = 1;

SELECT COUNT(CPF) as QNTD_CLIENTES_BAIRRO, BAIRRO, CIDADE
FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO') GROUP BY BAIRRO;

select * from notas_fiscais where DATA_VENDA = '2017-01-01' limit 10;

SELECT p.nome_do_produto, p.codigo_do_produto, inf.quantidade FROM tabela_de_produtos as p
INNER JOIN itens_notas_fiscais as inf ON p.codigo_do_produto = inf.codigo_do_produto
WHERE p.codigo_do_produto = '1101035' ORDER BY inf.quantidade DESC;

SELECT CODIGO_DO_PRODUTO, MAX(QUANTIDADE), COUNT(QUANTIDADE) FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;

SELECT CPF, COUNT(DATA_VENDA) FROM notas_fiscais where YEAR (DATA_VENDA) = 2016
GROUP BY CPF having COUNT(*) > 2000;

select NOME,
case
when DATA_DE_NASCIMENTO < 1990 then 'Velho'
when DATA_DE_NASCIMENTO >= 1990 and DATA_DE_NASCIMENTO < 1995 then 'Joven'
else 'Crianca' end as Classificacao from tabela_de_clientes order by nome, Classificacao;

