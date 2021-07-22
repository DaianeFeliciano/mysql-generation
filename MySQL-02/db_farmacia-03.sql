create database db_farmacia_do_bem;
use  db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(50),
nome_produto varchar(50),
primary key(id)
);

select * from tb_categoria;

insert into tb_categoria (tipo, nome_produto)
values ("Cosmético", "Desodorante");

insert into tb_categoria (tipo, nome_produto)
values ("Remédios", "Medicamento");

insert into tb_categoria (tipo, nome_produto)
values ("Cosmético", "Batom");


create table  tb_produto (
id bigint auto_increment,
preco decimal(4,2),
marca varchar(50),
quantidade int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)

);

select * from tb_produto;

insert into tb_produto (preco, marca, quantidade, categoria_id)
values (15, "Nivea", 3, 1);

insert into tb_produto (preco, marca, quantidade, categoria_id)
values (70, "Natura", 1, 4);
/*update tb_produto set categoria_id = 4 where id = 3;*/
insert into tb_produto (preco, marca, quantidade, categoria_id)
values (50, "Clonazepam", 5, 2);

insert into tb_produto (preco, marca, quantidade, categoria_id)
values (40, "Babymed", 1, 2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where marca like "%b%"; 

 select  * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 select  tb_produto.marca, tb_categoria.tipo from  tb_produto inner join tb_categoria on
 tb_categoria.id =  tb_produto.categoria_id where tb_categoria.tipo = "Cosmético";
 
 select  tb_produto.marca, tb_categoria.tipo from  tb_produto inner join tb_categoria on
 tb_categoria.id =  tb_produto.categoria_id where tb_categoria.tipo = "Remédios";


