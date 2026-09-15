CREATE DATABASE db_firma;

USE db_firma;

CREATE TABLE tbl_cliente(
id INT,
nome VARCHAR (15),
status_cliente VARCHAR (15),
limite_de_credito VARCHAR (100),
endereco VARCHAR (20),
telefone VARCHAR (25),
PRIMARY KEY (id)
);

INSERT INTO tbl_cliente (id,nome,status_cliente,limite_de_credito,endereco,telefone) VALUES

(1,'Ronaldo','Bom','67','Rua dos sigmas','55-11 99987-9966'),
(2,'Dagoberto','Ruim','11','Rua dos betas','55-12 99987-6969'),
(3,'Cristiano','Bom','69','Rua dos Machos Alfas','55-11 99987-6767'),
(4,'Patati','Medio','50','Rua dos Pilantras','55-11 99987-3636'),
(5,'Patata','Medio','50','Rua dos Palhaços','55-11 99987-3737');

CREATE TABLE tbl_produto(
id INT,
nome VARCHAR (15),
preco FLOAT (20),
categoria VARCHAR (100),
PRIMARY KEY (id)
);

INSERT INTO tbl_produto (id,nome,preco,categoria) VALUES

(1,'Água Sanitária',12.00,'limpeza'),
(2,'Sabão em pó',13.00,'limpeza'),
(3,'Pasta de dente',12.00,'higiene pessoal'),
(4,'Soda Cáustica',20.00,'Uso residencial'),
(5,'Shampoo',15.00,'higiene pessoal');

CREATE TABLE tbl_pedido(
id INT,
quantidade INT,
id_cliente INT,
id_produto INT,
data_de_elaboracao VARCHAR (30),
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES tbl_produto (id),
FOREIGN KEY (id_produto) REFERENCES tbl_cliente (id)
);

INSERT INTO tbl_pedido (id,quantidade,id_cliente,id_produto,data_de_elaboracao)VALUES

(1,5,1,1,'11/07/2010'),
(2,10,2,2,'12/07/2010'),
(3,15,3,3,'25/12/2010'),
(4,13,4,4,'14/07/2010'),
(5,10,5,5,'15/07/2010');

SELECT * FROM tbl_cliente;
SELECT * FROM  tbl_pedido;
SELECT * FROM tbl_produto;