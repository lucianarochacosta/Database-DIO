CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
	id bigInt auto_increment,
    nome varChar(255),
    valor decimal(6,2),
    quantidade int,
    marca varChar(255),
    categoria_id bigInt,
    
    primary key (id),
    foreign key (categoria_id) REFERENCES tb_categorias(id)
);

CREATE TABLE tb_categorias(
	id bigInt auto_increment,
    nome_categoria varChar(255),
    setor varChar(255),
    
    primary key (id)
);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(nome_categoria,setor) VALUES ("Antiinflamatório", "Medicamentos");
INSERT INTO tb_categorias(nome_categoria,setor) VALUES ("Antibiótico", "Medicamentos");
INSERT INTO tb_categorias(nome_categoria,setor) VALUES ("Vitamina", "Suplementos");
INSERT INTO tb_categorias(nome_categoria,setor) VALUES ("Creme dental", "Cuidados pessoais");
INSERT INTO tb_categorias(nome_categoria,setor) VALUES ("Hidratante", "Cosméticos");

INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Paracetabem", 30.90, 15, "Genérico", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Amoxicimol", 100.99, 12, "Genérico", 2);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Vitamina D", 160.25, 6, "Vitabem", 3);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Creme dental fresh", 5.50, 20, "Colgato", 4);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Hidratante corporal", 50.00, 4, "Neutrogema", 5);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Vitamina C", 20.99, 30, "OMS", 3);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Ibuprofena", 15.70, 10, "Madley", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Lavafloxacino", 103.99, 2, "Eurafarma", 2);

SELECT * FROM tb_produtos where valor > 50;
SELECT * FROM tb_produtos where valor > 5 and valor < 60;
SELECT * FROM tb_produtos where nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE nome_categoria = "Vitamina";