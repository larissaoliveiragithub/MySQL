create database db_rh;

use db_rh;

create table tb_funcionarios(
	id bigint(5) auto_increment,
	nome varchar (20) not null,
	idade bigint (2) not null,
	salario decimal (7,2),
	filhos bigint (2),
	primary key (id)

);

insert into tb_funcionarios(nome, idade, salario, filhos) values ("Piedade", 62, 3200, 2);
insert into tb_funcionarios(nome, idade, salario, filhos) values ("Estéfanie", 33, 2500, 0);
insert into tb_funcionarios(nome, idade, salario, filhos) values ("Paola", 35, 4300, 2);
insert into tb_funcionarios(nome, idade, salario, filhos) values ("Paulina", 35, 900, 0);
insert into tb_funcionarios(nome, idade, salario, filhos) values ("Carlos Daniel", 42, 5600, 2);

select * from tb_funcionarios;
select * from tb_funcionarios where salario < 2000;
select * from tb_funcionarios where salario > 2000;

update tb_funcionarios set salario = 1700
	where id = 4;