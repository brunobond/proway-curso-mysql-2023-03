CREATE TABLE aluno_turmas(
        id INT PRIMARY KEY AUTO_INCREMENT,
        codigo_turma INT NOT NULL, 
        codigo_aluno INT NOT NULL, -- FK


        -- FOREIGN KEY(nome_da_coluna_de_fk) REFERENCES nome_tabela_pai(coluna_pk_da_tabela_pai)
        FOREIGN KEY(codigo_turma) REFERENCES turmas(id),
        FOREIGN KEY(codigo_aluno) REFERENCES alunos(id)
    );


INSERT INTO aluno_turmas (id, codigo_turma, codigo_aluno) VALUES
    
(2000,	1,	1),
(2001,	1,	2),
(2002,	1,	3),
(2003,	1,	4),
(2004,	1,	5),
(2005,	2,	2),
(2006,	3,	5),
(2007,	3,	1),
(2008,	4,	4),
(2009,	7,	1),
(2010,	8,	1),
(2011,	6,	5),
(2012,	6,	4),
(2013,	6,	1);

SELECT 
    alunos.nome as "Aluno",
    turmas.id AS "Turma",
    cursos.nome AS "Curso"
    FROM alunos
    INNER JOIN aluno_turmas ON(alunos.id = aluno_turmas.codigo_aluno)
    INNER JOIN turmas ON(turmas.id = aluno_turmas.codigo_turma)
    INNER JOIN cursos ON(cursos.id = turmas.id_curso);

SELECT
    alunos.nome as "Aluno",
    professores.nome as "Professor"
    FROM professores
    INNER JOIN turmas ON(professores.id = turmas.id_professor)
    INNER JOIN aluno_turmas ON(turmas.id = aluno_turmas.codigo_turma)
    INNER JOIN alunos ON(alunos.id = aluno_turmas.codigo_aluno);

SELECT
    alunos.nome as "Aluno",
    cursos.nome as "Curso",
    data_inicio as "Data de início",
    data_termino as "Data de término",
    professores.nome as "Professor"
    FROM cursos
    INNER JOIN turmas ON (cursos.id = turmas.id_curso)
    INNER JOIN aluno_turmas ON (turmas.id = aluno_turmas.codigo_turma)
    INNER JOIN alunos ON (alunos.id = aluno_turmas.codigo_aluno)
    INNER JOIN professores ON ( professores.id = turmas.id_professor)
    
    ORDER BY data_inicio ASC;