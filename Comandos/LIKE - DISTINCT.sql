/* Função LIKE utilizada como filtro para achar determinados dados*/

SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%maça%' AND EMBALAGEM = 'pet';

SELECT * FROM tabela_de_clientes WHERE nome LIKE '%Mattos';

SELECT DISTINCT embalagem, sabor, tamanho FROM tabela_de_produtos WHERE sabor = 'laranja';

SELECT * FROM tabela_de_clientes WHERE cidade = 'rio de janeiro' AND PRIMEIRA_COMPRA = 1;

SELECT COUNT(CPF) AS QNTD_CLIENTES_BAIRRO, BAIRRO, CIDADE
FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO') GROUP BY BAIRRO;

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;

SELECT p.nome_do_produto, p.codigo_do_produto, inf.quantidade FROM tabela_de_produtos AS p
INNER JOIN itens_notas_fiscais AS inf ON p.codigo_do_produto = inf.codigo_do_produto /* A função INNER JOIN é utilizada para fazer a junção de duas tabelas em uma única pesquisa */
WHERE p.codigo_do_produto = '1101035' ORDER BY inf.quantidade DESC;

SELECT CODIGO_DO_PRODUTO, MAX(QUANTIDADE), COUNT(QUANTIDADE) FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035' AND QUANTIDADE = 99;

SELECT CPF, COUNT(DATA_VENDA) FROM notas_fiscais WHERE YEAR (DATA_VENDA) = 2016
GROUP BY CPF HAVING COUNT(*) > 2000;

SELECT NOME,
CASE
WHEN DATA_DE_NASCIMENTO < 1990 THEN 'Velho'
WHEN DATA_DE_NASCIMENTO >= 1990 AND DATA_DE_NASCIMENTO < 1995 THEN 'Joven'
ELSE 'Crianca' END AS Classificacao FROM tabela_de_clientes ORDER BY nome, Classificacao;

