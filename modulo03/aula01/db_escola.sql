-- Para criar um banco de dados --
CREATE DATABASE db_escola;

--Selecionar o banco de dados --
USE db_escola;

-- EXCLUIR TABELA
DROP TABLE tb_professor;

-- Criar Tabela --

CREATE TABLE tb_professor(
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno(
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email CHAR(255) UNIQUE NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE tb_curso(
    nomeCurso VARCHAR(100) NOT NULL,
    duracao CHAR(30) NOT NULL,
    numeroAlunos VARCHAR (10) NOT NULL,
    numeroProfessores VARCHAR(20) NOT NULL,
    numeroTurmas VARCHAR(10) NOT NULL,
    disciplinas VARCHAR(10) NOT NULL
);

CREATE TABLE tb_discplina(
    nomeDisciplina CHAR(100) NOT NULL,
    media CHAR(10) NOT NULL,
    numeroDeProvas VARCHAR(10) NOT NULL,
    professor CHAR(100) UNIQUE NOT NULL,
    horasDeAula CHAR(10) NOT NULL
);

--inserir dados

INSERT INTO tb_professor(nome,email,cpf)
VALUES(
    'Alessandro', 'ale@email.com', '12312312312'
);

INSERT INTO tb_professor(nome,email,cpf)
VALUES(
    'Bruno', 'bruno@email.com', '11122233344'
);

INSERT INTO tb_aluno(nome,email,cpf,matricula)
VALUES(
    'Douglas', 'douglas@email.com', '10210310410', '9513574568'
);

INSERT INTO tb_aluno(nome,email,cpf,matricula)
VALUES(
    'Chiquim', 'chiquim@email.com', '32156413454', '9513574568'
);

-- Selecionar os dados --
SELECT * FROM tb_professor;

