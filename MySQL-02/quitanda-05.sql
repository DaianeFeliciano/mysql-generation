create database db_cidade_das_frutas;
use db_cidade_das_frutas;

drop table tb_categoria;
create table tb_categoria(
                    
	id bigint auto_increment,
	tipo varchar(50), 
    subtipo varchar(50),             
    primary key(id) 

);
select * from tb_categoria;

insert into tb_categoria(tipo, subtipo)
 values ("Fruta", "Secas");
 
insert into tb_categoria(tipo, subtipo)
 values ("Vegetal", "A");
 
 insert into tb_categoria(tipo, subtipo)
 values ("Legume", "B");
 



create table tb_produto(

	 id bigint auto_increment, 
	 preco decimal(4,2),
     nome varchar(50),
     quantidade int,
     peso  decimal(4,2),
     categoria_id bigint,
     primary key (id),
     foreign key (categoria_id) references  tb_categoria(id)

);
insert into tb_produto(preco, nome, quantidade, peso,  categoria_id)
 values (4.10, "Maça", 20, 2, 1);
 
 insert into tb_produto(preco, nome, quantidade, peso,  categoria_id)
 values (51, "Tomate", 10, 3, 3);
 
  insert into tb_produto(preco, nome, quantidade, peso,  categoria_id)
 values (5, "Alface", 15, 0.5, 2);
 
   insert into tb_produto(preco, nome, quantidade, peso,  categoria_id)
 values (5, "Cenoura", 10, 2, 3);

 


select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60 ;
select * from tb_produto where nome like "%c%"; 

select  * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select  * from tb_produto where categoria_id = 1;