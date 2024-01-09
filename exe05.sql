CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
 id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT,
  PRIMARY KEY (id)
  );

CREATE TABLE tb_pizzas  (
 id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  valor DECIMAL(8, 2) NOT NULL,
  ingredientes TEXT,
  categoria_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
  
INSERT INTO tb_categorias (nome, descricao) VALUES
("Tradicionais", "Pizzas com sabores clássicos e ingredientes de alta qualidade."),
("Especiais", "Pizzas com combinações inovadoras e ingredientes gourmet."),
("Vegetarianas", "Pizzas deliciosas sem carne, perfeitas para vegetarianos e veganos."),
("Doces", "Pizzas para sobremesa, com sabores doces e cobertura irresistível."),
("Kids", "Pizzas menores e com sabores que as crianças adoram.");
  
INSERT INTO tb_pizzas (nome, valor, ingredientes, categoria_id) VALUES
("Margherita", 35.00, "Molho de tomate, mussarela, manjericão fresco.", 1),
("Pepperoni", 40.00, "Molho de tomate, mussarela, pepperoni.", 1),
("Calabresa", 42.00, "Molho de tomate, mussarela, calabresa.", 1),
("Quatro Queijos", 45.00, "Molho de tomate, mussarela, provolone, gorgonzola e parmesão.", 1),
("Mexicana", 48.00, "Molho de tomate, mussarela, carne moída, pimenta, cebola e pimentão.", 2),
("Frango com Catupiry", 50.00, "Molho de tomate, mussarela, frango desfiado e catupiry.", 2),
("Portuguesa", 52.00, "Molho de tomate, mussarela, presunto, ovo, cebola e ervilha.", 2),
("Chocolate com Morango", 30.00, "Cobertura de chocolate, morangos frescos e leite condensado.", 4);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.id=4;



