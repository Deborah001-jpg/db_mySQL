CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar (255) NOT NULL,
remuneracao DECIMAL NOT NULL,
data_nascimento date,
cargo varchar (255),
primary key (id)
 );

-- Inserir dados na tabela
INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento,cargo)
VALUES ("Natalia Souza",2000, "1984-04-10", "Recrutador");

INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento,cargo)
VALUES ("Marcio Garcia",3000, "1965-05-12", "Gerente");

INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento,cargo)
VALUES ("Carolina Molina",1000, "2005-08-10", "Estágiario");

INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento, cargo)
VALUES ("Fernando Tobias",2000, "1993-09-13", "Vendedor");

INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento, cargo)
VALUES ("Cristiano Lucca",6000, "1989-09-13", "Gestor");

INSERT INTO tb_funcionarios(nome, remuneracao, data_nascimento, cargo)
VALUES ("Percival Soares",1000, "2000-02-15", "Vendedor");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE remuneracao > 2000;
SELECT * FROM tb_funcionarios WHERE remuneracao < 2000;

DELETE FROM tb_funcionarios WHERE Id = 8;
DELETE FROM tb_funcionarios WHERE Id = 1;

