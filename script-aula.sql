CREATE TABLE professor (
  id_professor SERIAL PRIMARY KEY,
  nome         varchar(100) not null,
  email        varchar(100) not null unique,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP  
);
CREATE TABLE turma (
  id_turma     SERIAL PRIMARY KEY,
  nome         varchar(100) not null,
  id_professor integer not null,
  criado_em    timestamp without time zone null default CURRENT_TIMESTAMP,  
  CONSTRAINT   fk_turma_professor FOREIGN KEY (id_professor) 
               REFERENCES professor (id_professor)                    
);

SELECT * FROM professor;
SELECT * FROM turma;
 
INSERT INTO professor (nome, email) VALUES ('Norberto','norberto@gmail.com'); 
INSERT INTO professor (nome, email) VALUES ('Jomar', 'jomar@gmail.com'); 

INSERT INTO turma (nome, id_professor) VALUES ('2DS', '1'); 
INSERT INTO turma (nome, id_professor) VALUES ('1DS', '2'); 
 
