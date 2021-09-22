-- criando o banco de dados
create database db_pizzaria_Gen;


use db_pizzaria_Gen;


create table tb_categoria(
	id bigint auto_increment,
    tamanho varchar(40) not null,
    tipo varchar(40) not null,
    
    primary key (id)
    
);

-- criando a tabela tb_pizza
create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(40) not null,
    borda_recheada boolean not null,
    preco decimal(10,2) not null,
    fk_id_categoria bigint,
    
    primary key (id),
    foreign key (fk_id_categoria) references tb_categoria(id)
);


insert into tb_categoria (tamanho, tipo) values ("grande", "doce");
insert into tb_categoria (tamanho, tipo) values ("grande", "salgada");
insert into tb_categoria (tamanho, tipo) values ("media", "doce");
insert into tb_categoria (tamanho, tipo) values ("media", "salgada");
insert into tb_categoria (tamanho, tipo) values ("pequena", "doce");
insert into tb_categoria (tamanho, tipo) values ("pequena", "salgada");

select * from tb_categoria;

insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Napolitana", true, 35.50, 4);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Mussarela", false, 30.00, 4);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Brócolis", true, 45.00, 2);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Frango c/ catupiry", true, 20.00, 6);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Catubresa", false, 35.50, 6);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Romeu e julietta", false, 45.50, 1);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Chocolate", false, 45.50, 1);
insert into tb_pizza (sabor, borda_recheada, preco, fk_id_categoria) values ("Prestígio", false, 20.00, 5);

select * from tb_pizza;
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 26 and 60;
select * from tb_pizza where sabor like "c%"; -- Posicionando o % dessa forma, seleciona apenas a primeira letra
select * from tb_pizza inner join tb_categoria on tb_pizza.fk_id_categoria = tb_categoria.id;
select * from tb_pizza left join tb_categoria on tb_pizza.fk_id_categoria = tb_categoria.id where tipo = "doce"
