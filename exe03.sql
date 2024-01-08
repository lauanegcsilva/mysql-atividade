CREATE DATABASE db_escola;

USE db_ecommerce;

DROP TABLE IF EXISTS estudantes;

CREATE TABLE estudantes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  matricula VARCHAR(20) NOT NULL,
  serie VARCHAR(10) NOT NULL,
  turma VARCHAR(10) NOT NULL,
  nota DECIMAL(10,2) NOT NULL
  );

INSERT INTO estudantes (nome, matricula, serie, turma, nota) VALUES
("João Silva", "123456", "7º ano EF", "A", 8.5, "2010-10-12"),
("Maria Oliveira", "654321", "8º ano EF", "B", 9.2, "2009-05-21"),
("Pedro Souza", "789012", "9º ano EF", "C", 6.8, "2008-08-07"),
("Ana Santos", "321654", "1º ano EM", "A", 7.3, "2007-12-30"),
("Carlos Costa", "456789", "2º ano EM", "B", 5.9, "2006-06-15"),
("Bianca Rodrigues", "987654", "3º ano EM", "C", 8.1, "2005-03-04"),
("Eduardo Pereira", "210987", "1º ano EM", "A", 9.8, "2004-09-19"),
("Gabriela Martins", "876543", "6º ano EF", "B", 6.3, "2011-02-25");

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 6 WHERE id=5;