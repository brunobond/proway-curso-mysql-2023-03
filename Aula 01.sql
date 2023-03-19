-- Consultar bancos de dados criados
show schemas;

-- Apagar o banco de dados que foi criado
DROP DATABASE IF EXISTS curso_mysql;

-- Criar o banco de dados que será utilizado no curso
CREATE DATABASE IF NOT EXISTS curso_mysql;

-- Definir o banco de dados que será executado as consultas(queries)
USE curso_mysql;

-- Consulta as tabelas do banco de dados utilizando(vulgo comando USE curso_mysql)
SHOW TABLES;

-- Criar tabela para armazenar os registrar dos alunos

CREATE TABLE alunos(
    -- AUTO_INCREMENT vai fazer o id começar com e dpois incrementar em 1 a cada registro
    -- NOT NULL coluna que é obrigatório informar valor
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL -- VARCHAR (100) coluna com no máximo 100 caracteres
);

-- Consultar todos os registros da tabela de alunos
SELECT
    id,
    nome
    FROM alunos;

-- Criar registro na tabela de alunos
INSERT INTO alunos (nome) VALUE ("José");

-- CUIDADO: Apagar TODOS os registros da tabela;
DELETE FROM alunos;

-- Consultar as colunas das tabelas
DESCRIBE alunos;
-- +-------+--------------+------+-----+---------+----------------+
-- | Field | Type         | Null | Key | Default | Extra          |
-- +-------+--------------+------+-----+---------+----------------+
-- | id    | int          | NO   | PRI | NULL    | auto_increment |
-- | nome  | varchar(100) | NO   |     | NULL    |                |
-- +-------+--------------+------+-----+---------+----------------+

-- Redefinir o AUTO_INCREMENT e apagar todos os registros da tabela,
-- proém n pode ter FK relacionada a esta tabela
TRUNCATE TABLE alunos;

-- Criar registro na tabela de alunos
INSERT INTO alunos (nome) VALUE ("José");
INSERT INTO alunos (nome) VALUE ("Luiz");
INSERT INTO alunos (nome) VALUE ("Bruno");
INSERT INTO alunos (nome) VALUE ("Lucas");
INSERT INTO alunos (nome) VALUE ("Jardel");
INSERT INTO alunos (nome) VALUE ("Zaqueu");
INSERT INTO alunos (nome) VALUE ("João");

-- Apagar o registro de João filtrando pelo nome "João"
DELETE FROM alunos WHERE nome = "João";
-- Apagar o registro do João filtrando pelo id 7
DELETE FROM alunos WHERE id = 7;

-- Consultar quantidade de registros da tabela
SELECT COUNT(id) from alunos;


CREATE TABLE PROFESSORES(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    valor_hora FLOAT(5, 2) -- cinco números, sendo 2 na parte decimal
);

INSERT INTO professores(nome, valor_hora) VALUE ("Francisco", 53.00);
INSERT INTO professores(nome, valor_hora) VALUE ("Javeiro", 80.35);
INSERT INTO professores(nome, valor_hora) VALUE ("Rubens", 75.00);
INSERT INTO professores(nome, valor_hora) VALUE ("Pablo", 60.00);
INSERT INTO professores(nome, valor_hora) VALUE ("Pamela", 100.00);

-- Criar tabela de cursos
CREATE TABLE CURSOS(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    carga_horaria INT
);

-- Criar registros de cursos
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("MySQL", 28);
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("C#", 40);
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("Python", 39);
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("Java", 41);
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("HTML, CSS", 32);
INSERT INTO CURSOS(nome, carga_horaria) VALUE ("React", 52);

-- Consultar registros de cursos
SELECT id, nome, carga_horaria FROM cursos;

-- Consultar registros de cursos ordenados em ordem crescente(ASC) da coluna nome
SELECT id, nome, carga_horaria FROM cursos ORDER BY nome ASC;

-- Consultar registros de cursos ordenados em ordem decrescente(dSC) da coluna nome
SELECT id, nome, carga_horaria FROM cursos ORDER BY nome DESC;

-- Consultar registros de cursos filtrando onde a carga_horaria é maior ou igual a 40 horas
-- Ordenando pela carga_horaria em ordem crescende

SELECT id, nome, carga_horaria FROM cursos
    WHERE carga_horaria >= 40
    ORDER BY carga_horaria ASC;

-- Operadores relacionais
-- IGUAL           =
-- DIFERENTE       !=  <>
-- MENOR           <
-- MENOR OU IGUAL  <=
-- MAIOR           >
-- MAIOR OU IGUAL  >=

LISTA DE EXERCÍCIOS
https://bit.ly/3yLA5xk
