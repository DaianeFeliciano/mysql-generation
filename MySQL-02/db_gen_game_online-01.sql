create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
	id bigint auto_increment,
    descricao varchar (100) not null,
    cenario_game varchar(100) not null,
    primary key(id)

);

select * from tb_classe;

insert into tb_classe  (descricao, cenario_game)
 values ("Mago das Trevas", "Dark");
 
 insert into tb_classe  (descricao, cenario_game)
 values ("Bruxo do Hinoki", "Blue");
 
  insert into tb_classe  (descricao, cenario_game)
 values ("Anjo do Sol", "Clean");
 
   insert into tb_classe  (descricao, cenario_game)
 values ("Lua Brilhante", "White");

create table tb_personagem (
	id bigint auto_increment,
    nome_personagem varchar(25) not null,
    poder_ataque bigint not null,
    poder_defesa bigint not null,
    habilidade_especial varchar(200) not null,
    classe_id bigint,
    primary key (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
    
);

select * from tb_personagem;

insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Magnólia", 3000, 1500, "Magia", 1);
 
 /* update tb_personagem set classe_id = 1 where id = 1; */
 
 insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Brunxildo", 500, 1100, "Feitiço", 2);
 
  
 insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Angel", 6000, 2000, "Cura", 3);
 
  insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Cassadra", 1800, 600, "Cristais", 4);
 
 insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Lindy", 2000, 1500, "Voar", 4);
 
  insert into tb_personagem ( nome_personagem,  poder_ataque,  poder_defesa,  habilidade_especial,  classe_id)
 values ("Angelical", 1400, 2000, "Voar", 3);
 
 /*ALTER TABLE tb_personagem  CHANGE personagem_id classe_id bigint;*/
 
select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_defesa between 1000 and 2000 order by  poder_defesa desc;
select * from tb_personagem where nome_personagem like "%c%"; 
/* update tb_personagem set nome_personagem = "Cassandra" where id = 4; */
 
 select  tb_personagem.nome_personagem, tb_personagem.habilidade_especial, tb_classe.descricao, tb_classe.cenario_game
from  tb_personagem inner join tb_classe on tb_classe.id  = tb_personagem.classe_id; 

 select  tb_personagem.nome_personagem,  tb_classe.cenario_game
from  tb_personagem inner join tb_classe on tb_classe.id  = tb_classe.cenario_game; 

select tb_personagem.nome_personagem, tb_classe.cenario_game from tb_personagem inner join tb_classe
on tb_personagem.classe_id = tb_classe.id
where tb_classe.cenario_game = "Clean";

select tb_personagem.nome_personagem, tb_classe.cenario_game from tb_personagem inner join tb_classe
on tb_personagem.classe_id = tb_classe.id
where tb_classe.cenario_game = "White";


