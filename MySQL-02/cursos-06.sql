create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
                    
	id bigint auto_increment,
	area varchar(50),
    primary key(id) 

);
select * from tb_categoria;

insert into tb_categoria(area)
 values ("Frontend");
 
insert into tb_categoria(area)
 values ("Backend");
 
 insert into tb_categoria(area)
 values ("DevOPS");
 
  insert into tb_categoria(area)
 values ("InfraEstrutura");
 
   insert into tb_categoria(area)
 values ("Design");
 



create table tb_curso(

	 id bigint auto_increment, 
	 preco decimal(4,2),
     nome varchar(50),
     duração int,
     categoria_id bigint,
     primary key (id),
     foreign key (categoria_id) references  tb_categoria(id)

);
insert into tb_curso(preco, nome, duração, categoria_id)
 values (90, "Javascript", 20, 1);
 
 insert into tb_curso(preco, nome, duração, categoria_id)
 values (80, "Photoshop", 32, 5);
 
 insert into tb_curso(preco, nome, duração, categoria_id)
 values (99, "Amazon Web Service", 40, 3);
 
  insert into tb_curso(preco, nome, duração, categoria_id)
 values (70, "Linux", 15, 4);
 
   insert into tb_curso(preco, nome, duração, categoria_id)
 values (55, "C#", 10, 2);

 


select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60 ;
select * from tb_curso where upper(nome) like "%J%"; 

select  * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select  * from tb_curso where categoria_id = 3;