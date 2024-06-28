create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment not null,
tipo varchar(255) not null,
tamanho int,
primary key (id)
);

create table tb_pizzas(
id bigint auto_increment not null,
sabor varchar(255) not null,
ingredientes varchar(255),
borda varchar(255),
preco decimal(10,2),
primary key (id)
);

select * from tb_categorias;

select * from tb_pizzas;

alter table tb_pizzas add categorias_id bigint;
alter table tb_pizzas add constraint fk_pizzas_categorias
foreign key (categorias_id) references tb_categorias (id);

alter table tb_categorias modify tamanho varchar(255);

insert into tb_categorias(tipo,tamanho)
values ("Salgada", "Família"),
("Salgada", "Brotinho"),
("Doce", "Família"),
("Doce", "Brotinho"),
("Meio-a-meio", "Família");

insert into tb_pizzas(sabor, ingredientes, borda, preco, categorias_id)
values ("Frango com Catupiry", "Frango desfiado, catupiry, molho de tomate","Recheada",59.90, 1),
("Calabresa", "Calabresa, molho de tomate","Simples", 49.90, 1),
("Caipira", "Frango desfiado, mussarela, milho verde, molho de tomate","Simples",39.90, 2),
("Três Queijos", "Mussarela, provolone, parmesão, molho de tomate","Recheada",49.90, 1),
("Brigadeiro", "Chocolate ao leite, granulado","Simples",54.90, 3),
("Toscana e Mussarela", "Linguiça toscana, mussarela, molho de tomate","Recheada",59.90, 5),
("Chocolate com Morango", "Chocolate ao leite, morango","Simples",34.90, 4),
("Banana Caramelizada", "Banana, caramelo","Simples",34.90, 4);

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%M%";

select sabor, ingredientes, borda, preco, tb_categorias.tipo, tb_categorias.tamanho
from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id;

select sabor, ingredientes, borda, preco, tb_categorias.tipo, tb_categorias.tamanho
from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id
where tipo = "Doce";