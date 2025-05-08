CREATE DATABASE Relacionamento;
use Relacionamento;

CREATE TABLE Cursos (
	id INT auto_increment PRIMARY KEY,
    nome varchar(250)
    );
CREATE TABLE Alunos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(250),
    curso INT,
    salario DOUBLE,
    idade INT,
    FOREIGN KEY (curso) REFERENCES cursos (id)
    );

-- INSERINDO NUMEROS
INSERT INTO cursos (nome) VALUES ('Matemática'), ('Física'), ('Quimica');

-- INSERINDO ALUNOS
INSERT INTO  alunos (nome, Curso, Salario, idade) VALUES 
('João Silva', 1, 1500.00, 20),
('Maria Oliveira', 2, 1800.00, 22),
('Pedro Santos', 1, 1600.00, 21),
('Ana Costa', 3, 1700.00, 19);

SELECT 
	Alunos.id AS AlunosID,
    Alunos.nome AS AlunosNome,
    Alunos.nome AS CursosNome,
    Alunos.salario,
    Alunos.idade
FROM
	Alunos
JOIN
	Cursos ON Alunos.Curso = Cursos.id;














