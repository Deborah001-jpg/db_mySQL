CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria) VALUES ("Ferramentas Manuais");
INSERT INTO tb_categorias (nome_categoria) VALUES ("Materiais Elétricos");
INSERT INTO tb_categorias (nome_categoria) VALUES ("Materiais Hidráulicos");
INSERT INTO tb_categorias (nome_categoria) VALUES ("Ferragens");
INSERT INTO tb_categorias (nome_categoria) VALUES ("Pintura");

-- Inserindo registros na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, id_categoria) VALUES
("Martelo de Carpinteiro", 19.99, 50, 1),
("Furadeira Elétrica", 129.99, 30, 2),
("Tubos de PVC 50mm", 5.99, 100, 3),
("Maçaneta de Porta", 8.49, 80, 4),
("Tinta Acrílica Branca", 29.99, 40, 5),
("Chave de Fenda Phillips", 7.99, 60, 1),
("Conduíte Flexível 20mm", 3.49, 120, 2),
("Verniz para Madeira", 15.99, 25, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto Like "%C%";

-- Selecionando dados das tabelas tb_produtos e tb_categorias usando INNER JOIN
SELECT 
    tb_produtos.id_produto,
    tb_produtos.nome_produto,
    tb_produtos.preco,
    tb_produtos.quantidade_estoque,
    tb_categorias.nome_categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;
    
-- Selecionando dados das tabelas tb_produtos e tb_categorias usando INNER JOIN com filtro por categoria
SELECT 
    tb_produtos.id_produto,
    tb_produtos.nome_produto,
    tb_produtos.preco,
    tb_produtos.quantidade_estoque,
    tb_categorias.nome_categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE 
    tb_categorias.nome_categoria = 'Materiais Hidráulicos';

