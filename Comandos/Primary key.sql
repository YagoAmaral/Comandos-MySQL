alter table tbcliente add primary key (CPF);
alter table tbcliente add column (DATA_NASCIMENTO DATE);

INSERT INTO	tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO,
VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO) VALUES (
'00388934051', 'Vini MQS', 'The Nexus','', 'Venus','Vault of Glass', 'Atheon', '22222222',
28, 'M', 10000.00, 2001, 0, '1992-12-25'),
('00388934052', 'TiEris', 'Linha do Arqueiro','', 'Lua','Fortaleza das Sombras', 'Eris Morna', '33333333',
29, 'M', 30000.00, 2002, 0, '1991-07-10'),
('00388934053', 'Artur Campos', 'A Costa','', 'Cidade Onirica','Ultimo Desejo', 'Tita Matadeiro', '44444444',
30, 'M', 40000.00, 2003, 0, '1990-05-12');


select * from tbcliente;

