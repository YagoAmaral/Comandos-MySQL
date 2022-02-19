use vendas_sucos;

SELECT * FROM clientes;

INSERT INTO CLIENTES
VALUES ('11471156710', 'Érica Carvalho', 'R. Iriquitia', 'Jardins', 'São Paulo', 'SP', '80012212',
'1990-09-01', '27', 'F', 170000, '24500', 0);

INSERT INTO CLIENTES
VALUES ('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', 'Água Santa',
'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', '18', 'M', 100000, '20000', 1),
('2600586709', 'César Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ',
'22020001', '2000-03-12', '18', 'M', 120000, 22000, 0);

INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP,
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO,
VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);

INSERT INTO PRODUTOS
SELECT CODIGO_DO_PRODUTO AS CODIGO_PRODUTO, NOME_DO_PRODUTO AS DESCRITOR, SABOR,
TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos;

SELECT * FROM PRODUTOS;

UPDATE VENDEDORES SET NOME = 'Márcio Almeida Silva' WHERE MATRICULA = '235';
UPDATE VENDEDORES SET NOME = 'Cláudia Morais' WHERE MATRICULA = '236';
UPDATE VENDEDORES SET NOME = 'Péricles Alves' WHERE MATRICULA = '238';

INSERT INTO NOTAS
SELECT NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO
FROM sucos_vendas.notas_fiscais;

SELECT * FROM NOTAS;
