CREATE DATABASE db_ecommerce;

USE db_ecommerce;

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
descricao VARCHAR(255) NOT NULL,
dataentrada DATE NOT NULL
);

INSERT INTO produtos (nome, valor, descricao, dataentrada) VALUES
('Caneta Azul', 2.50, 'Caneta esferográfica azul com ponta fina.', '2024-01-08'),
('Lápis Preto', 1.20, 'Lápis de grafite preto nº 2.', '2024-01-08'),
('Borracha Branca', 0.80, 'Borracha branca para apagar lápis.', '2024-01-08'),
('Caderno Pautado', 15.00, 'Caderno com 100 folhas pautadas.', '2024-01-08'),
('Estojo Escolar', 20.00, 'Estojo com zíper para guardar lápis, canetas e outros materiais.', '2024-01-08'),
('Mochila Escolar', 100.00, 'Mochila com rodinhas para carregar livros e materiais escolares.', '2024-01-08'),
('Quadro Negro', 501.00, 'Quadro negro 350cmX120cm', '2024-01-08'),
('Tinta Guache', 10.00, 'Kit com 6 cores de tinta guache.', '2024-01-08');

SELECT * FROM produtos WHERE valor > 500;

SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 25.00 WHERE id=5;