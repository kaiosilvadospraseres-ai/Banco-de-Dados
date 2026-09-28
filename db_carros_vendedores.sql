CREATE DATABASE db_carros;

USE db_carros;

CREATE TABLE tbl_carros (
id INT,
placa VARCHAR (15),
marca VARCHAR (15),
modelo VARCHAR (15),
ano INT,
combustível VARCHAR (10),
PRIMARY KEY (id)
);

CREATE TABLE tbl_vendedores (
id INT,
nome VARCHAR (25),
carro VARCHAR (25),
cidade VARCHAR (25),
estado VARCHAR (20),
comissao FLOAT,
PRIMARY KEY (id)
);

INSERT INTO tbl_carros (id,placa,marca,modelo,ano,combustível) VALUES

(1,'ABC1234','Ford','Corcel II',1982,'G'),
(2,'JKG5678','Ford','Focus',2001,'A'),
(3,'LKO8954','Renault','Clio',2007,'F'),
(4,'MMS1609','VolksWagen','Fusca',1973,'G'),
(5,'ASD123','Honda','Civic',2010,'F'),
(6,'gtr4596','GM','Corsa',2004,'A'),
(7,'ONP123','Ford','Corcel II',1982,'G'),
(8,'ATA321','Honda','Civic',1992,'F'),
(9,'JJS347','Ford','Corcel II',1982,'G'),
(10,'HXH123','Ford','Corcel II',1999,'G');

SELECT * FROM tbl_carros;

INSERT INTO tbl_vendedores (id,nome,carro,cidade,estado,comissao) VALUES
(1,'Juca da Silva','ABC1234','Pelotas','RS',3.50),
(3,'Antoni Vieira','JKG5678','Dois Vizinhos','PR',5.00),
(44,'Julieta da Silva','NULL','Verê','PR',2.50),
(6,'Maria Francisca','LKO8954','Dois Vizinhos','PR',2.00),
(45,'Marieta da Silva','NULL','Verê','PR',2.80),
(9,'Juca Silva','NULL','Pelotas','RS',3.50),
(18,'Maria Guedes','MMS1609','Brasília','DF',5.40),
(20,'Jian de Barros','ASD123','Curitiba','PR',3.40),
(28,'Fagundes de Azevedo','NULL','Verê','PR',2.80),
(40,'Ari Ribas','gtr4596','Erechim','RS',3.50);

SELECT * FROM tbl_carros;
SELECT * FROM tbl_vendedores;

UPDATE tbl_vendedores
SET carro = 'ONP123'
WHERE id = 44;

UPDATE tbl_vendedores
SET carro = 'ATA321'
WHERE id = 45;

UPDATE tbl_vendedores
SET carro = 'JJS347'
WHERE id = 9;

UPDATE tbl_vendedores
SET carro = 'HXH123'
WHERE id = 28;

