	/*UTILIZANDO AUTO_INCREMENT*/
CREATE TABLE TAB_IDENTITY 
(ID INT AUTO_INCREMENT,
DESCRITOR VARCHAR(20),
PRIMARY KEY (ID));

INSERT INTO TAB_IDENTITY (DESCRITOR)
VALUES ('CLIENTE1'); 
/*NÃO FOI INSERIDO O VALOR NO CAMPO ID PORQUE O MESMO ESTÁ COM AUTO_INCREMENT*/

SELECT * FROM TAB_IDENTITY;

INSERT INTO TAB_IDENTITY (DESCRITOR)
VALUES ('CLIENTE2');
INSERT INTO TAB_IDENTITY (DESCRITOR)
VALUES ('CLIENTE3');

DELETE FROM TAB_IDENTITY WHERE ID = 2;

INSERT INTO TAB_IDENTITY (DESCRITOR)
VALUES ('CLIENTE4'); 
/*A SEQUÊNCIA PERMANCE (4,5,6) MESMO QUE O CAMPO ('2') TENHA SIDO APAGADO*/
/*QUANDO A SEQUÊNCIA É FORÇADA PARA UM NÚMERO MAIOR O AUTO_INCREMENT SEGUIRÁ A PARTIR DA ÚLTIMA*/