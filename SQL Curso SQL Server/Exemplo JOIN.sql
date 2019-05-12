SELECT * FROM disciplina;

SELECT * FROM alunos;

SELECT * FROM matricula;

SELECT a.nome, d.nome_disc, m.periodo
FROM alunos a
INNER JOIN matricula m
ON a.id_aluno = m.id_aluno
INNER JOIN disciplina d
ON d.id_disciplina = m.id_disciplina

SELECT a.nome, d.nome_disc, m.periodo
FROM alunos a
LEFT JOIN matricula m
ON a.id_aluno = m.id_aluno
LEFT JOIN disciplina d
ON d.id_disciplina = m.id_disciplina