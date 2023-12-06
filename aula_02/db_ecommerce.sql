CREATE DATABASE db_ecommerce;

USE db_ecommerce;


CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255) NOT NULL,
preco DECIMAL (19,2) NOT NULL,
 data_entrega date,
 tipo varchar (255),
primary key (id)
 );
 
 -- Inserir dados na tabela
INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Rosas",25, "2023-12-15", "Vegano");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Maracuja",300, "2023-12-24", "Frutas");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Canela&Cravo",150, "2023-11-30", "Vegano");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Pitanga",300, "2023-12-13", "Frutas");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Esfoliante",1500, "2023-12-13", "Vegano");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Limão",34000, "2000-02-15", "frutas");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Alegrim",200, "2023-11-20", "Vegano");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Lavanda",150, "2023-12-15", "Vegano");

INSERT INTO tb_produtos(nome, preco, data_entrega,tipo)
VALUES ("Sabonete Açafrão",22000, "2023-11-26", "Vegano");

delete from tb_produtos where id = 1;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos;
