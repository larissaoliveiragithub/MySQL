CREATE DATABASE db_banco_MAH;

CREATE TABLE `tb_usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(255) NOT NULL,
	`email_usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`descricao_breve` varchar(255) NOT NULL,
	`hashtag` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_postagem` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`foreign_key_usario` bigint NOT NULL,
	`foreign_key_tema` bigint NOT NULL,
	`postagem` varchar(1500) NOT NULL,
	`comentario_postagem` varchar(500) NOT NULL,
	`data_hora_postagem` TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`foreign_key_usario`) REFERENCES `tb_usuario`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`foreign_key_tema`) REFERENCES `tb_tema`(`id`);

select * from tb_postagem;
