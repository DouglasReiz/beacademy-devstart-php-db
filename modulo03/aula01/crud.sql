USE db_escola;

-- insert 1 registro --
INSERT INTO tb_porfessor (nome,email,cpf)
VALUES ('Chiquim das Tapiocas', 'chiquim@email.com','33322244411');


-- Mais de 1 registro --
INSERT INTO tb_professor(nome,email,cpf)
VALUES
('Zezim das Rapaduras', 'zezim@email.com', '77788899966'),
('Maria das Rapaduras', 'maria@email.com', '99988877766'),
('Luiza das Rapaduras', 'luiza@email.com', '33322211144');

-- Excluir 1 registro --
DELETE FROM tb_professor HERE id='1';

-- Excluir todos os registros --
DELETE FROM tb_professor;

-- Editar 1 registro --
UPDATE tb_professor SET nome = 'Luiza da Caucaia' WHERE cpf ='33322211144';

-- editar dados de todos os registros --
UPDATE tb_professor SET nome='Francisco';

-- selecionar todos os dados de todos os professores --
SELECT * FROM tb_professor;

-- selecionar todos os dados do professor de id=5 --
SELECT *FROM tb_professor WHERE id='5';

-- selecionar alguns dados de todos os professores --
SELECT nome,cpf FROM tb_professor;