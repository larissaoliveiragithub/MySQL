create database db_cidade_das_frutas;

use db_cidade_das_frutas;

CREATE TABLE `tb_caracteristicas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`cor` varchar(255) NOT NULL,
	`tamanho` char(1) NOT NULL,
	PRIMARY KEY (`id`)
);

insert into tb_caracteristicas (cor, tamanho) values ("Verde", "P");
insert into tb_caracteristicas (cor, tamanho) values ("Verde", "M");
insert into tb_caracteristicas (cor, tamanho) values ("Verde", "G");
insert into tb_caracteristicas (cor, tamanho) values ("Amarelo", "P");
insert into tb_caracteristicas (cor, tamanho) values ("Amarelo", "M");
insert into tb_caracteristicas (cor, tamanho) values ("Amarelo", "G");
insert into tb_caracteristicas (cor, tamanho) values ("Vermelho", "P");
insert into tb_caracteristicas (cor, tamanho) values ("Vermelho", "M");
insert into tb_caracteristicas (cor, tamanho) values ("Vermelho", "G");

select * from tb_caracteristicas;

CREATE TABLE `tb_frutas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL(10,2) NOT NULL,
	`fk_id_caracteristicas` bigint NOT NULL,
	PRIMARY KEY (`id`),
    FOREIGN KEY (`fk_id_caracteristicas`) REFERENCES `tb_caracteristicas`(`id`)
);

select * from tb_frutas;

insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Melancia", 20.00, 3);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Morango", 8.00, 7);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Abacaxi", 9.00, 6);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Pêra", 7.00, 1);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Maracujá", 9.00, 4);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Maçã-verde", 15.00, 2);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Amora", 10.00, 7);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Mexerica", 4.00, 5);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Caqui", 8.00, 8);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Limão", 3.00, 1);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Pêssego", 5.00, 4);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Pinha", 13.00, 2);
insert into tb_frutas (nome, preco, fk_id_caracteristicas) values ("Carambola", 11.00, 5);

-- todos os select
select * from tb_frutas where preco > 10.00;
select * from tb_frutas where preco between 5.00 and 12.00;
select * from tb_frutas where nome like "c%";
select * from tb_frutas inner join tb_caracteristicas 
on tb_frutas.fk_id_caracteristicas = tb_caracteristicas.id;
select * from tb_frutas inner join tb_caracteristicas 
on tb_frutas.fk_id_caracteristicas = tb_caracteristicas.id
where tb_caracteristicas.id = 8;