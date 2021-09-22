create	 	database	ecommerce;
use ecommerce;
create table produtos(
	id int(5) auto_increment,
    nome varchar(30) not null,
    tipo enum('salgado', 'doce', 'amargo', 'azedo'),
    vencimento date,
    valor int(6),
    primary key (id));
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 01", "salgado", '2021-10-25', 8);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 02", "doce", '2021-10-25', 10);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 03", "azedo", '2021-10-25', 15);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 04", "salgado", '2021-10-25', 30);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 05", "doce", '2021-10-25', 60);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 06", "salgado", '2021-10-25', 120);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 07", "amargo", '2021-10-25', 500);
insert into produtos (nome, tipo, vencimento, valor) values ("Chocolate 08", "salgado", '2021-10-25', 800);

select * from produtos;
    
select * from produtos where valor > 500;
select * from produtos where valor < 500;
update produtos set valor = 9500 where id = 5;