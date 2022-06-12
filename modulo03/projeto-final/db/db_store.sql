CREATE DATABASE db_store;

USE db_store;

CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    valor FLOAT(5,2) NOT NULL,
    categoria_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);



INSERT INTO tb_category(name, description)
VALUES
('Informatica', 'Produtos de informatica e acessorios para computador'),
('Escritorio', 'Canetas, Cadernos, Folhas, etc'),
('Eletronicos', 'TVs, Som portatil, Caixas de som, etc');

INSERT INTO tb_product(name, description, photo, valor, categoria_id, quantity, created_at)
VALUES('Teclado mecâcico RGB', 'Teclado Gamer com Rgb de alta performance, projetado para uma boa escrita e especialmente para jogos', 'https://m.media-amazon.com/images/I/71xVYmz-y9S._AC_SY450_.jpg', '164,90', '1', '300', '11/06/2022 22:07');
