create database db_construindo_a_nossa_vida;
use  db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(50),
nome_produto varchar(50),
primary key(id)
);

select * from tb_categoria;

insert into tb_categoria (tipo, nome_produto)
values ("Ferramentas", "Martelo");

insert into tb_categoria (tipo, nome_produto)
values ("Insumos", "Cimento");

insert into tb_categoria (tipo, nome_produto)
values ("Insumos", "Madeira");


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
values (50, "Flex", 2, 1);

insert into tb_produto (preco, marca, quantidade, categoria_id)
values (90.10, "Votorantim", 10, 2);

insert into tb_produto (preco, marca, quantidade, categoria_id)
values (98, "Martz", 40, 3);


select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where marca like "%v%"; 

 select  * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 select  tb_produto.marca, tb_categoria.tipo from  tb_produto inner join tb_categoria on
 tb_categoria.id =  tb_produto.categoria_id where tb_categoria.tipo = "Insumos";
 
 select  tb_produto.marca, tb_categoria.tipo from  tb_produto inner join tb_categoria on
 tb_categoria.id =  tb_produto.categoria_id where tb_categoria.tipo = "Ferramentas";
