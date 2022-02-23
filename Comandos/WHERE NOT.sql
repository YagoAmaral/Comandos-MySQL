/* Função WHERE utilizada para especificar uma pesquisa*/

SELECT * FROM tabela_de_produtos WHERE sabor = 'manga'
OR TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE sabor = 'manga'
AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE NOT (sabor = 'manga'
OR TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE NOT (sabor = 'manga'
AND TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE sabor = 'manga'
AND NOT (TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE sabor IN ('laranja', 'manga');

SELECT * FROM tabela_de_clientes WHERE cidade IN ('rio de janeiro', 'sao paulo')
AND idade >=20;

SELECT * FROM tabela_de_clientes WHERE cidade IN ('rio de janeiro', 'sao paulo')
AND (idade >= 20 AND idade <= 22);