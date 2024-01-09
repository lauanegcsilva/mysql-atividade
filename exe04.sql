CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  nivel INT NOT NULL,
  poderataque INT NOT NULL,
  poderdefesa INT NOT NULL,
  classeid INT,
  PRIMARY KEY (id),
  FOREIGN KEY (classeid) REFERENCES tb_classes (id)
  );
  
INSERT INTO tb_classes (nome, descricao) VALUES
("JuJutsu", "Classe especializada em combate corpo a corpo."),
("Mago", "Classe com habilidades mágicas poderosas."),
("Arqueiro", "Classe especializada em ataques à distância."),
("Escudeiro", "Classe ágil e furtiva."),
("Cavaleiro", "Classe montada com habilidades de carga.");
  
INSERT INTO tb_personagens (nome, nivel, poderataque, poderdefesa, classeid) VALUES
("JuJutsu1", 10, 2500, 1200, 1),
("Mago1", 8, 1800, 900, 2),
("Arqueiro1", 12, 3000, 1800, 3),
("Escudeiro1", 7, 1200, 800, 4),
("Cavaleiro1", 15, 3500, 2000, 5),
("JuJutsu2", 11, 2800, 1500, 1),
("Mago2", 9, 2000, 1000, 2),
("Arqueiro2", 13, 3200, 1900, 3);

SELECT * FROM tb_personagens WHERE poderataque > 2000;

SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
on tb_personagens.classeid = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
on tb_personagens.classeid = tb_classes.id
WHERE tb_personagens.classeid=3;



