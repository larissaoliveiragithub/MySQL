create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    nome_classe varchar(255),
    skill varchar(255),
    custo_mana int,
    primary key (id) 
	
);

insert into tb_classe (nome_classe, skill, custo_mana) values ("Archer", "Arrow Shower", 20);
insert into tb_classe (nome_classe, skill, custo_mana) values ("Swordman", "Magnum Break", 12);
insert into tb_classe (nome_classe, skill, custo_mana) values ("Magician", "Fire Bolts", 30);
insert into tb_classe (nome_classe, skill, custo_mana) values ("Thief", "Steal", 10);
insert into tb_classe (nome_classe, skill, custo_mana) values ("Acolyte", "Heal", 40);

select * from tb_classe;

create table tb_personagem(
	id bigint auto_increment,
	nome varchar(20),
	raca varchar(20),
	ataque int,
    defesa int,
	vida int,
    mana int,
	primary key (id),
	fk_id_classe bigint,
	foreign key (fk_id_classe) references tb_classe(id)
);

select * from tb_personagem;

insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Ai", "Demi-human", 3200, 1600, 1190, 400, 1);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Lauren", "Human", 2600, 2100, 1550, 670, 5);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Adam", "Human", 4400, 1100, 3800, 200, 2);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Quatro", "Elf", 3700, 1200, 970, 800, 3);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Cinco", "Elf", 3200, 1800, 1190, 650, 5);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Seis", "Demi-human", 1500, 4550, 4100, 270, 2);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Sete", "Human", 2900, 1700, 1400, 300, 4);
insert into tb_personagem (nome, raca, ataque, defesa, vida, mana, fk_id_classe) 
	values ("Oito", "Human", 1900, 2690, 1700, 580, 5);
    
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";
select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.fk_id_classe;
select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.fk_id_classe
where fk_id_classe = 3;