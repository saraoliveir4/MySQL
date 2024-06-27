create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
categoria varchar(255),
cor varchar(255),
quantidade int,
preco decimal (10,2),
primary key (id)
);

insert into tb_produtos(nome, categoria, cor, quantidade, preco)
values ("Vestido", "Vestuário", "Azul", 50, 349.90),
("Colar", "Acessórios", "Dourado", 100, 89.90),
("Saia", "Vestuário", "Preto", 150, 229.90),
("Conjunto", "Vestuário", "Off White", 200, 549.90),
("Pulseira", "Acessórios", "Prata", 80, 49.90),
("Brinco", "Acessórios", "Dourado", 160, 59.90),
("Calça", "Vestuário", "Jeans", 250, 449.90),
("Jaqueta de Couro", "Vestuário", "Marrom", 300, 619.90);

select * from tb_produtos;

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;

update tb_produtos set cor = "Bronze" where id = 6;