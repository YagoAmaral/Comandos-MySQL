SELECT LTRIM('     OLÁ');
SELECT RTRIM('OLÁ     ');
SELECT TRIM('   OLÁ   ') AS RESULTADO;
SELECT CONCAT('OLÁ', ' ', 'TUDO BEM', '?') AS RESULTADO;
SELECT SUBSTRING('OLÁ, TUDO BEM?',6) AS RESULTADO;
SELECT SUBSTRING('OLÁ, TUDO BEM?',6,4) AS RESULTADO;
SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM TABELA_DE_CLIENTES;

SELECT CONCAT(NOME, ' (', ENDERECO_1, ',', BAIRRO,',', CIDADE,'/', ESTADO, ') ') 
AS CLIENTES FROM tabela_de_clientes;

SELECT CURDATE();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();
SELECT YEAR(CURRENT_TIMESTAMP());
SELECT MONTHNAME(CURRENT_TIMESTAMP());
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '1992-11-19') AS QDT;
SELECT DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;
SELECT CURRENT_TIMESTAMP() AS DIA_HOJE,
DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO;
SELECT DISTINCT DATA_VENDA, DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES,
YEAR(DATA_VENDA) AS ANO FROM notas_fiscais GROUP BY 'MES';

SELECT NOME, (YEAR(CURDATE()) - YEAR(DATA_DE_NASCIMENTO)) AS IDADE FROM TABELA_DE_CLIENTES;

SELECT (25+((33-6)/7)*98) AS RESULTATO;
SELECT CEILING(15.446546745826598354) AS RESULTADO;
SELECT ROUND(15.444) AS RESULTADO;
SELECT RAND() AS RESULTADO;
SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO
FROM itens_notas_fiscais;

SELECT FLOOR(SUM(IMPOSTO*(QUANTIDADE*PRECO))) AS IMP_PAGAR 
FROM notas_fiscais
INNER JOIN  itens_notas_fiscais ON 
NOTAS_FISCAIS.NUMERO =ITENS_NOTAS_FISCAIS.NUMERO
WHERE YEAR(DATA_VENDA)=2016;

SELECT CONCAT('DIA DE HOJE : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%W, %d/%m/%Y') ) 
AS RESULTADO;

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA);




