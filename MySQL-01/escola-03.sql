CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_estudantes (
matricula_id bigint auto_increment,
nome varchar(60),
datanascimento datetime,
turma bigint(200),
nota varchar(10),
primary key(matricula_id)
);


SELECT * FROM tb_estudantes;

 insert into tb_estudantes(nome, datanascimento, turma, nota) 
 values ("Luna", "2000-12-01", 26, 6);
 
  insert into tb_estudantes(nome, datanascimento, turma, nota) 
 values ("Bina", "2005-01-06", 25, 4);
 
  insert into tb_estudantes(nome, datanascimento, turma, nota) 
 values ("Lind", "2004-05-07", 24, 10);
  

 SELECT * FROM tb_estudantes WHERE nota > 7;
 SELECT * FROM tb_estudantes WHERE nota < 7;
 
  update  tb_estudantes set nota = 5 where matricula_id= 2;
 