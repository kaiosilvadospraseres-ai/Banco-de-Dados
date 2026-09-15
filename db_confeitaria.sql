CREATE DATABASE db_confeitaria;
USE db_confeitaria;

CREATE TABLE tbl_cliente (
id INT,
nome VARCHAR(25),
endereco VARCHAR(30),
PRIMARY KEY (id)
);

INSERT INTO tbl_cliente (id,nome,endereco) VALUES

(1,'Maria','Rua do Churros'),
(2,'Helma','Rua do Chucros'),
(3,'Lucia','Rua do Chute'),
(4,'Helena','Rua do Choro'),
(5,'Eduarda','Rua Sorriso');

SELECT * FROM tbl_cliente;

CREATE TABLE tbl_telefonecliente (
id INT,
id_cliente INT,
telefone VARCHAR (20),
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id)
);

INSERT INTO tbl_telefonecliente (id,id_cliente,telefone) VALUES

(1,1,'9999-9999'),
(2,2,'8888-8888'),
(3,3,'7777-7777'),
(4,4,'6666-6666'),
(5,5,'5555-5555');

CREATE TABLE tbl_pedido (
id INT,
data_pedido VARCHAR(20),
valor_total FLOAT(10),
id_cliente INT,
id_telefone INT,
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id),
FOREIGN KEY (id_telefone) REFERENCES tbl_telefonecliente (id)
);

Insert into tbl_pedido (id,data_pedido,valor_total,id_cliente,id_telefone) VALUES

(1,'07/06/2010',10.00,1,1),
(2,'08/06/2010',15.00,2,2),
(3,'09/06/2010',20.00,3,3),
(4,'09/06/2010',20.00,4,4),
(5,'09/06/2010',20.00,5,5);

CREATE TABLE tbl_produto (
id Int,
valor_kg FLOAT (10),
descricao VARCHAR (100),
PRIMARY KEY (id)
);

INSERT INTO tbl_produto (id,valor_kg,descricao) VALUES

(1,10.00,'Bolo de Maracuja'),
(2,15.00,' Bolo de Chocolate'),
(3,20.00,' Bolo de Morango'),
(4,40.00,'Bolo de jabuticaba'),
(5,50.00,'Bolo de Ameixa');

CREATE TABLE tbl_itempedido (
id INT,
id_pedido INT,
id_produto INT,
quantidade INT,
FOREIGN KEY (id_pedido) REFERENCES tbl_pedido (id),
FOREIGN KEY (id_produto) REFERENCES tbl_produto (id)
);

INSERT INTO tbl_itempedido (id,id_pedido,id_produto,quantidade) VALUES

(1,1,1,10),
(2,2,2,20),
(3,3,3,15),
(4,4,4,17),
(5,5,5,16);

SELECT * FROM tbl_cliente;
SELECT * FROM tbl_pedido;
SELECT * FROM tbl_produto;
SELECT * FROM tbl_itempedido;
SELECT * FROM tbl_telefonecliente;