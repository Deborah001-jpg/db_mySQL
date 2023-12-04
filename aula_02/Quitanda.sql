-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255)  NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("tomate",100, "2023-12-20",8.00);


INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("maçã",100, "2023-12-25",11.00),
("laranja",100, "2023-12-30",15.00),
("banana",100, "2023-12-22",11.90),
("uva",100, "2023-12-17",30.00),
("melancia",100, "2023-12-23",20.00);

SELECT * FROM tb_produtos;


ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
ALTER TABLE tb_produtos ADD descricao varchar (255);
ALTER TABLE tb_produtos DROP descricao;
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar (255);


UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_produtos WHERE id = 3;

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("jaboticaba",100, "2023-12-25",25.00);

SELECT nome, preco FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 1;
SELECT * FROM tb_produtos WHERE data_validade = "2023-12-20";
SELECT * FROM tb_produtos WHERE preco > 15.00;
SELECT * FROM tb_produtos WHERE preco > 15.00 or nome = "maçã";
SELECT * FROM tb_produtos WHERE preco > 10.00 AND nome = "maçã";
SELECT @@collation_database;
SELECT * FROM tb_produtos WHERE NOT id = 1;

SELECT nome, concat('R$' , FORMAT(preco, 2, 'pt_BR')) AS data_validade FROM tb_produtos;

SELECT nome, DATE_FORMAT(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

-- Desabilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 0;

-- Habilitar o modo safe update, que impede a execução do update e do delete sem where
SET SQL_SAFE_UPDATES = 1;

-- Atualizar o atributo preço na tabela, cujo id seja igual a 1
UPDATE tb_produtos SET preco = 10.00 WHERE id = 1;

-- Deletar o registro da tabela, cujo id seja igual a 2
DELETE FROM tb_produtos WHERE id = 2;

-- Apagar a tabela
DROP TABLE tb_produtos;

-- Apagar o Banco
DROP DATABASE db_quitanda;