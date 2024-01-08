CREATE DATABASE db_rh;

USE db_rh;

DROP TABLE IF EXISTS funcionarios;

CREATE TABLE funcionarios (
id 	INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
dataentrada DATE NOT NULL
);

INSERT INTO funcionarios (nome, cargo, salario, dataentrada) VALUES
("Lauane Silva", "Desenvolvedor de Software", 8000.00, "2023-07-29"),
("Helena Mascarenhas", "Tech Lead", 9900.00, "2020-12-15"),
("Matheus Souza", "Product Owner", 4000.00, "2022-10-27"),
("Maria Paula Fernandes", "Estagiário", 1800.00, "2023-12-15"),
("Lucas Pereira", "Contador", 2000.00, "2020-09-15");

SELECT * FROM funcionarios WHERE salario > 2000;

SELECT * FROM funcionarios WHERE salario < 2000;

UPDATE funcionarios SET salario = 8100.00 WHERE id=1;