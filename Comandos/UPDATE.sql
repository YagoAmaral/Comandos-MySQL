     /* ALTERANDO CAMPOS DO BANCO DE DADOS COM O COMANDO UPDATE */
     
SELECT * FROM PRODUTOS;

UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO_PRODUTO = '1000889';

UPDATE PRODUTOS SET EMBALAGEM = 'PET', TAMANHO = '1 Litro',
DESCRITOR = 'Sabor da Montanha - 1 Litro - UVA' WHERE CODIGO_PRODUTO = '1000889';

SELECT * FROM PRODUTOS WHERE SABOR = 'Maracujá';

UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá';

SELECT * FROM CLIENTES WHERE CPF = '19290992743';

UPDATE CLIENTES SET ENDERECO = 'R. Jorge Emílio 23', BAIRRO = 'Santo Amaro', CIDADE = 'São Paulo',
ESTADO = 'SP', CEP = '8833223' WHERE CPF = '19290992743';

     /* UTILIZANDO UPDATE COM O FROM */
     
SELECT * FROM VENDEDORES;

SELECT * FROM SUCOS_VENDAS.TABELA_DE_VENDEDORES;

SELECT * FROM VENDEDORES A /*INNER JOIN FAZ A JUNÇÃO ENTRE AS TABELAS*/ /*AS VOGAIS A E B SERÃO OS NOMES DAS RESPECTIVAS TABELAS*/
INNER JOIN SUCOS_VENDAS.TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3); /*SUBSTRING RETIRA OS CAMPOS QUE NÃO SÃO COMPATÍVEIS*/

UPDATE VENDEDORES A
INNER JOIN SUCOS_VENDAS.TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.FERIAS = B.DE_FERIAS;

	/*EXERCÍCIO*/
    
SELECT * FROM VENDEDORES;

SELECT * FROM CLIENTES;

SELECT * FROM CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO;

UPDATE CLIENTES A INNER JOIN VENDEDORES B
ON A.BAIRRO = B.BAIRRO
SET A.VOLUME_COMPRA = A.VOLUME_COMPRA * 1.30;


