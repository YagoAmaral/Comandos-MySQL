select * from tabela_de_produtos where sabor = 'manga'
or TAMANHO = '470 ml';

select * from tabela_de_produtos where sabor = 'manga'
and TAMANHO = '470 ml';

select * from tabela_de_produtos where not (sabor = 'manga'
or TAMANHO = '470 ml');

select * from tabela_de_produtos where not (sabor = 'manga'
and TAMANHO = '470 ml');

select * from tabela_de_produtos where sabor = 'manga'
and not (TAMANHO = '470 ml');

select * from tabela_de_produtos where sabor in ('laranja', 'manga');

select * from tabela_de_clientes where cidade in ('rio de janeiro', 'sao paulo')
and idade >=20;

select * from tabela_de_clientes where cidade in ('rio de janeiro', 'sao paulo')
and (idade >= 20 and idade <= 22);