create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
                    
	id bigint auto_increment,
	tipo varchar(50), 
    massa varchar(50),             
    primary key(id) 
 

);
 /*alter table tb_categoria modify id bigint auto_increment; */
drop table tb_categoria;
select * from tb_categoria;

insert into tb_categoria(tipo, massa)
 values ("Doce", "Grossa");
 
insert into tb_categoria(tipo, massa)
 values ("Doce", "Fina");
 
 insert into tb_categoria(tipo, massa)
 values ("Salgada", "Grossa");
 
 insert into tb_categoria(tipo, massa)
 values ("Salgada", "Fina");
 
 insert into tb_categoria(tipo, massa)
 values ("Salgada", "Tradicional");
 
  insert into tb_categoria(tipo, massa)
 values ("Doce", "Tradicional");


create table tb_pizza(

	 id bigint auto_increment, 
	 preco decimal(4,2),
     sabor varchar(50),
     quantidade bigint,
     pizza_grande  boolean not null,
     pizza_pequena  boolean not null,
     categoria_id bigint,
     primary key (id),
     foreign key (categoria_id) references  tb_categoria(id)

);
/*alter table tb_pizza modify  pizza_grande boolean not null;
alter table tb_pizza modify  pizza_pequena boolean not null;
alter table tb_pizza modify preco decimal(4,2);*/

insert into tb_pizza(preco, sabor, quantidade, pizza_grande, pizza_pequena,  categoria_id)
 values (40.10, "Calabresa", 2, true, false, 3);
 
 insert into tb_pizza(preco, sabor, quantidade, pizza_grande, pizza_pequena,  categoria_id)
 values (40.10, "Mussarela", 2, true, true, 4);
 
 insert into tb_pizza(preco, sabor, quantidade, pizza_grande, pizza_pequena,  categoria_id)
 values (50, "Portuguesa", 1, false, true, 5);
 
  insert into tb_pizza(preco, sabor, quantidade, pizza_grande, pizza_pequena,  categoria_id)
 values (50, "Chocolate", 1, false, true, 1);
 

 

/*update tb_pizza set preco = 25.25 where id = 2;*/

select * from tb_pizza where preco between 29 and 60 order by  preco desc;
select * from tb_pizza where preco > 45;
select * from tb_pizza where sabor like "%c%"; 

select * from tb_pizza;

 select  tb_pizza.sabor ,  tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo = "Doce";
 select  tb_pizza.sabor ,  tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo = "Salgada";
 select  * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

/*delete from tb_pizza where id = 8;*/

