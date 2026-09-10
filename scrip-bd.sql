CREATE TABLE professor(
  id_professor SERIAL PRIMARY KEY,
  nome varchar(255),
  email varchar(255),
  cpf varchar(14)
  
);

INSERT INTO professor (nome, email, cpf) VALUES ('Norberto', 'norberto@gmail.com', '12345674123-63');
INSERT INTO professor (nome, email, cpf) VALUES ('Julia', 'julia@gmail.com', '12345678901-42');

SELECT * FROM professor;


CREATE TABLE turma(
  id_turma SERIAL PRIMARY KEY,
  nome varchar(255),
  qtd_alunos int,
  fk_professor int, 
  CONSTRAINT fk_professor FOREIGN KEY (fk_professor) REFERENCES professor (id_professor)
);

INSERT INTO turma (nome, qtd_alunos, fk_professor) VALUES ('2DS', 15, 1);
INSERT INTO turma (nome, qtd_alunos, fk_professor) VALUES ('1DS', 35, 2);

SELECT * FROM turma;


