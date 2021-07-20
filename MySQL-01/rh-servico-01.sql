CREATE DATABASE db_rh;
use db_rh;
CREATE TABLE tb_funcionaries (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(60),
salario DECIMAL(8,2),
funcao VARCHAR(50),
email VARCHAR(50),
PRIMARY KEY(id)

);

SELECT * FROM tb_funcionaries;

 insert into tb_funcionaries(nome, salario, funcao, email) 
 values ("Daiane", 15000, "Programadora", "daiane@dai.com.br");
 
 insert into tb_funcionaries(nome, salario, funcao, email) 
 values ("Victor", 14000, "Cientista de Dados", "victor@vic.com.br");
 
  insert into tb_funcionaries(nome, salario, funcao, email) 
 values ("Luna", 1800, "Analista de Sistemas", "luna@lun.com.br");
 
   insert into tb_funcionaries(nome, salario, funcao, email) 
 values ("Lindalva", 1900, "Analista de BI", "lindalva@lind.com.br");
 
 SELECT * FROM tb_funcionaries WHERE salario > 2000;
 SELECT * FROM tb_funcionaries WHERE salario < 2000;
 
 update tb_funcionaries set salario = 15000 where id = 2;