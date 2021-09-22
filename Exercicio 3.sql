create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint (5) auto_increment,
	nome varchar (30) not null,
	serie character (1) not null,
	nota decimal (2,1),
    idade bigint (2) not null,
	
    primary key(id)

);

insert into tb_estudantes(nome, serie, nota, idade) values ("Andressa", 4, 7.3, 10);
insert into tb_estudantes(nome, serie, nota, idade) values ("Luana", 3, 8.1, 11);
insert into tb_estudantes(nome, serie, nota, idade) values ("Felipe", 4, 5.8, 10);
insert into tb_estudantes(nome, serie, nota, idade) values ("Adriano", 4, 3.5, 10);
insert into tb_estudantes(nome, serie, nota, idade) values ("Celina", 5, 9.0, 10);
insert into tb_estudantes(nome, serie, nota, idade) values ("Lorena", 3, 6.6, 10);
insert into tb_estudantes(nome, serie, nota, idade) values ("Pedro", 3, 5.2, 11);
insert into tb_estudantes(nome, serie, nota, idade) values ("Fernando", 4, 9.8, 11);

select * from tb_estudantes;
select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7.7
	where id = 7;