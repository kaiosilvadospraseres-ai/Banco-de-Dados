CREATE DATABASE db_cliníca;
USE db_cliníca;

CREATE TABLE tbl_paciente (
RG VARCHAR (25),
nome VARCHAR (25),
endereco VARCHAR (20),
convenio VARCHAR (30),
PRIMARY KEY (RG)
);

INSERT INTO tbl_paciente (RG,nome,endereco,convenio) VALUES 
('00.000.000-00','Maria','Rua Alecrim','Especial'),
('11.111.111-11','Roseli','Rua Dourado','Médio'),
('22.222.222-22','Marta','Rua Campo','Médio'),
('33.333.333-33','Monica','Rua Buracão','Especial'),
('44.444.444-44','Magali','Rua Sansão','Especial');

CREATE TABLE tbl_medico (
CRM VARCHAR (20),
nome VARCHAR (20),
RG VARCHAR (20),
PRIMARY KEY (CRM)
);

INSERT INTO tbl_medico (CRM,nome,RG) VALUES 
('333.333.333-333','João','66.666.666-66'),
('444.444.444-444','Carlos','77.777.777-77'),
('555.555.555-555','Lucas','88.888.888-88'),
('666.666.666-666','Lucas','88.888.888-88'),
('777.777.777-777','Lucas','88.888.888-88');

CREATE TABLE tbl_consulta (
cod_consulta INT,
data_consulta VARCHAR (10),
id_paciente VARCHAR (25),
id_medico VARCHAR (20),
hora VARCHAR (10),
PRIMARY KEY (cod_consulta),
FOREIGN KEY (id_paciente) REFERENCES tbl_paciente (RG),
FOREIGN KEY (id_medico) REFERENCES tbl_medico (CRM)
);

INSERT INTO tbl_consulta (cod_consulta,data_consulta,id_paciente,id_medico,hora) VALUES 
(1,'07/06/2010','00.000.000-00','333.333.333-333','10:00'),
(2,'08/06/2010','11.111.111-11','444.444.444-444','11:00'),
(3,'09/06/2010','22.222.222-22','555.555.555-555','12:00'),
(4,'10/06/2010','33.333.333-33','666.666.666-666','13:00'),
(5,'11/06/2010','44.444.444-44','777.777.777-777','14:00');

SELECT * FROM tbl_paciente;
SELECT * FROM tbl_medico;
SELECT * FROm tbl_consulta;