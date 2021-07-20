CREATE DATABASE db_ecommerce;
use  db_ecommerce;
CREATE TABLE tb_produtos (
	id bigint auto_increment,
    nomeproduto varchar(50),
    marca varchar(50),
    preco decimal(8,2),
    quantidade int(200),
    primary key(id)

);

SELECT * FROM tb_produtos;

 insert into tb_produtos(nomeproduto, marca, preco, quantidade) 
 values ("Caixa de Bombom", "Nestle", 10.90, 5);
  insert into tb_produtos(nomeproduto, marca, preco, quantidade) 
 values ("Celular", "Motorola", 5000, 1);
   insert into tb_produtos(nomeproduto, marca, preco, quantidade) 
 values ("Relogio", "Rolex", 400, 6);
  insert into tb_produtos(nomeproduto, marca, preco, quantidade) 
 values ("Mouse", "Dazz", 50, 2);

 SELECT * FROM tb_produtos WHERE preco > 500;
 SELECT * FROM tb_produtos WHERE preco < 500;
 
  update  tb_produtos set preco = 15.10 where id = 1;
 