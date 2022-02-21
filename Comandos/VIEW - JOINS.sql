SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM tabela_de_vendedores A 
INNER JOIN notas_fiscais B ON A.MATRICULA = B.MATRICULA GROUP BY A.MATRICULA, A.NOME;

SELECT YEAR(NF.DATA_VENDA) AS ANO,
ROUND(SUM(I.QUANTIDADE * I.PRECO),2) AS FATURAMENTO FROM notas_fiscais AS NF
INNER JOIN itens_notas_fiscais AS I ON I.NUMERO = NF.NUMERO GROUP BY ANO;

SELECT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT distinct A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
INNER JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT distinct A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
left JOIN notas_fiscais B ON A.CPF = B.CPF WHERE B.CPF IS NULL;

SELECT tabela_de_vendedores.BAIRRO AS VENDEDOR_BAIRRO, 
tabela_de_vendedores.NOME AS VENDEDOR_NOME,
tabela_de_clientes.BAIRRO AS CLIENTE_BAIRRO,
tabela_de_clientes.NOME AS CLIENTE_NOME FROM tabela_de_vendedores 
INNER JOIN tabela_de_clientes 
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO AS VENDEDOR_BAIRRO, 
tabela_de_vendedores.NOME AS VENDEDOR_NOME,
tabela_de_clientes.BAIRRO AS CLIENTE_BAIRRO,
tabela_de_clientes.NOME AS CLIENTE_NOME FROM tabela_de_vendedores 
left JOIN tabela_de_clientes 
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
UNION
SELECT tabela_de_vendedores.BAIRRO AS VENDEDOR_BAIRRO, 
tabela_de_vendedores.NOME AS VENDEDOR_NOME,
tabela_de_clientes.BAIRRO AS CLIENTE_BAIRRO,
tabela_de_clientes.NOME AS CLIENTE_NOME FROM tabela_de_vendedores 
right JOIN tabela_de_clientes 
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;
SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

SELECT X.CPF, X.QUANTIDADE FROM
  (SELECT CPF, COUNT(*) AS QUANTIDADE FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016 GROUP BY CPF) X
  WHERE X.QUANTIDADE > 2000;
  
SELECT * FROM vw_mariores_embalagens;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM
vw_mariores_embalagens X WHERE X.PRECO_MAXIMO >= 10;
  


