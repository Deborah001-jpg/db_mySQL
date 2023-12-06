CREATE DATABASE db_Escola;
USE db_Escola;

CREATE TABLE tb_Alunos(
id bigint auto_increment,
nome varchar (255) NOT NULL,
nota DECIMAL (19,5) NOT NULL,
data_nascimento date,
curso varchar (255),
primary key (id)
 );

-- Inserir dados na tabela
INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Natalia Souza",7.6, "1984-04-10", "Matemática");

INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Marcio Garcia",10, "1965-05-12", "Portugues");

INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Carolina Molina",10, "2005-08-10", "Matemática");

INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Fernando Tobias",7.3, "1993-09-13", "Matemática");

INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Cristiano Lucca",8.0, "1989-09-13", "Portugues");

INSERT INTO tb_Alunos(nome, nota, data_nascimento,curso)
VALUES ("Percival Soares",10, "2000-02-15", "Matemática");

SELECT * FROM tb_Alunos WHERE nota > 7;
SELECT * FROM tb_Alunos WHERE nota < 7;
