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
    value FLOAT(5,2) NOT NULL,
    categoria_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);



INSERT INTO tb_category(name, description)
VALUES
('Informatica', 'Produtos de informatica e acessorios para computador'),
('Escritorio', 'Canetas, Cadernos, Folhas, etc'),
('Eletronicos', 'TVs, Som portatil, Caixas de som, etc');

INSERT INTO tb_product(name, description, photo, value, categoria_id, quantity, created_at)
VALUES
('Mouse gamer', 'Mouse com 6 botões', 'https://static3.tcdn.com.br/img/img_prod/670412/mouse_gamer_havit_hv_ms1027_2400_dpi_6_botoes_rgb_preto_3649_2_20200917194043.jpg', '90.00', '1', '500', '2022-06-12 22:55:30');

('Monitor', 'Monitor Gamer lcd', 'https://http2.mlstatic.com/D_NQ_NP_2X_818516-MLA49336037172_032022-V.webp', '500.99', '1', '300', '2022-06-12 21:53:40');

('Teclado mecâcico RGB', 'Teclado Gamer com Rgb de alta performance, projetado para uma boa escrita e especialmente para jogos', 'https://m.media-amazon.com/images/I/71xVYmz-y9S._AC_SY450_.jpg', '164.90', '1', '300', '2022-06-11 22:07:40');


