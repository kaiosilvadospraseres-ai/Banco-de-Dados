CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tbl_cliente (
id INT,
nome VARCHAR (20),
CPF_CNPJ VARCHAR (20),
email VARCHAR (25),
telefone VARCHAR (20),
endereco VARCHAR (20),
tipo VARCHAR (15),
data_cadastro VARCHAR (15),
desconto_exclusivo VARCHAR (10),
PRIMARY KEY (id)
);

DROP TABLE tbl_cliente;

INSERT INTO tbl_cliente (id,nome,CPF_CNPJ,email,telefone,endereco,tipo,data_cadastro,desconto_exclusivo) VALUES

(1,'Kaio','000.000.000','kaio.lindo@gmail.com','11-1212-1212','Jardim Palanque','Especial','31/12/2000','20%'),
(2,'Karol','111.111.111','karol.linda@gmail.com','11-3434-3434','Jardim Piaui','Comum','30/12/2000','5%'),
(3,'Karine','222.222.222','karine.linda@gmail.com','11-5656-5656','Jardim Pluma','Especial','29/12/2000','20%'),
(4,'Karoline','333.333.333','karoline.linda@gmail.com','11-7878-7878','Jardim Primavera','Comum','28/12/2000','5%'),
(5,'Kaka','444.444.444','kaka.lindo@gmail.com','11-9090-9090','Jardim Palacio','Especial','27/12/2000','20%');

CREATE TABLE tbl_pedido (
id INT,
id_cliente INT,
data_pedido VARCHAR (15),
valor_total FLOAT,
status_pedido VARCHAR (30),
observacao VARCHAR (30),
PRIMARY KEY (id),
FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id)
);

DROP TABLE tbl_pedido;

INSERT INTO tbl_pedido (id,data_pedido,valor_total,status_pedido,observacao) VALUES

(1,'22/03/2010',30.00,'Em andamento','Deixar na porta dos fundos'),
(2,'23/03/2010',40.00,'Entregue','Deixar na porta dos fundos'),
(3,'24/03/2010',50.00,'Saiu para entrega','Deixar na porta dos fundos'),
(4,'25/03/2010',20.00,'Em andamento','Deixar na porta dos fundos'),
(5,'26/03/2010',10.00,'Cancelado','Deixar na porta dos fundos');

CREATE TABLE tbl_peca (
id INT,
descricao VARCHAR (100),
categoria VARCHAR (30),
marca VARCHAR (20),
preco_venda FLOAT,
estoque INT,
cod_fabricante VARCHAR (20),
unidade_medida VARCHAR (20),
peso VARCHAR (30),
data_cadastro VARCHAR (15),
PRIMARY KEY (id)
);

DROP TABLE tbl_peca;

INSERT INTO tbl_peca (id,descricao,categoria,marca,preco_venda,estoque,cod_fabricante,unidade_medida,peso,data_cadastro) VALUES

(1, 'Pastilha de freio', 'Freios', 'Bosch', 120.00, 20, 'FAB001', 'Unidade', '1.2 kg', '15/03/2010'),
(2, 'Filtro de oleo', 'Filtros', 'Mann', 45.00, 35, 'FAB002', 'Unidade', '0.5 kg', '16/03/2010'),
(3, 'Vela de ignicao', 'Motor', 'NGK', 30.00, 50, 'FAB003', 'Unidade', '0.2 kg', '17/03/2010'),
(4, 'Correia dentada', 'Motor', 'Continental', 180.00, 10, 'FAB004', 'Unidade', '0.8 kg', '18/03/2010'),
(5, 'Amortecedor dianteiro', 'Suspensao', 'Cofap', 350.00, 8, 'FAB005', 'Unidade', '5.5 kg', '19/03/2010');

CREATE TABLE tbl_itempedido (
id INT,
id_pedido INT,
id_peca INT,
quantidade INT,
preco_unitario FLOAT,
desconto_item VARCHAR (20),
sub_total FLOAT,
PRIMARY KEY (id),
FOREIGN KEY (id_pedido) REFERENCES tbl_pedido (id),
FOREIGN KEY (id_peca) REFERENCES tbl_peca (id)
);

INSERT INTO tbl_itempedido (id,id_pedido,id_peca,quantidade,preco_unitario,desconto_item,sub_total) VALUES

(1, 1, 1, 2, 120.00, '0%', 240.00),
(2, 1, 2, 1, 45.00, '0%', 45.00),
(3, 2, 3, 3, 30.00, '5%', 85.50),
(4, 2, 4, 1, 180.00, '0%', 180.00),
(5, 3, 5, 1, 350.00, '10%', 315.00);

CREATE TABLE tbl_fornecedor (
id INT,
razao_social VARCHAR (45),
CNPJ VARCHAR (25),
email VARCHAR (40),
endereco VARCHAR (35),
telefone VARCHAR (20),
contato VARCHAR (25),
data_cadastro VARCHAR (20),
PRIMARY KEY (id)
);

DROP TABLE tbl_fornecedor;

INSERT INTO tbl_fornecedor (id, razao_social, CNPJ, email, endereco, telefone, contato, data_cadastro) VALUES

(1, 'Auto Pecas Brasil LTDA', '12.345.678/0001-90', 'contato@autopecasbrasil.com', 'Rua das Oficinas, 100', '11-3333-1111', 'Joao Silva', '15/03/2010'),
(2, 'Distribuidora Motor Forte LTDA', '23.456.789/0001-81', 'contato@motorforte.com', 'Av. Brasil, 250', '11-3333-2222', 'Carlos Santos', '16/03/2010'),
(3, 'Pecas Sao Paulo LTDA', '34.567.890/0001-72', 'vendas@pecassp.com', 'Rua dos Mecanicos, 50', '11-3333-3333', 'Marcos Oliveira', '17/03/2010'),
(4, 'Fornecedor Nacional de Autopecas', '45.678.901/0001-63', 'contato@fornecedornacional.com', 'Av. Industrial, 800', '(11) 3333-4444', 'Ana Souza', '18/03/2010'),
(5, 'Auto Center Distribuidora LTDA', '56.789.012/0001-54', 'vendas@autocenter.com', 'Rua das Pecas, 120', '11-3333-5555', 'Pedro Costa', '19/03/2010');

CREATE TABLE tbl_fornecimentopeca (
id INT,
id_fornecedor INT,
id_peca INT,
preco_compra FLOAT,
data_inicial VARCHAR (25),
prazo_entrega_dias VARCHAR (30),
ativo VARCHAR (15)
);

INSERT INTO tbl_fornecimentopeca (id, id_fornecedor, id_peca, preco_compra, data_inicial, prazo_entrega_dias, ativo) VALUES 

(1, 1, 5, 250.00, '06/07/2000', '5 dias úteis', 'Sim'),
(2, 2, 2, 45.00, '07/07/2000', '3 dias úteis', 'Sim'),
(3, 3, 3, 10.00, '08/07/2000', '7 dias úteis', 'Não'),
(4, 4, 1, 90.00, '09/07/2000', '10 dias úteis', 'Sim'),
(5, 5, 4,80.00, '10/07/2000', '2 dias úteis', 'Sim');

SELECT * FROM tbl_cliente;
SELECT * FROM tbl_pedido;
SELECT * FROM tbl_peca;
SELECT * FROM tbl_itempedido;
SELECT * FROM tbl_fornecedor;
SELECT * FROM tbl_fornecimentopeca;

