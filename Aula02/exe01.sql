create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment not null,
classe varchar(255) not null,
resistencia int,
primary key (id)
);

create table tb_personagens(
id bigint auto_increment not null,
nome varchar(255) not null,
nivel int,
ataque int,
defesa int,
primary key (id)
);

select * from tb_classes;

select * from tb_personagens;

alter table tb_personagens add classesid bigint;

alter table tb_personagens change column classesid classes_id bigint;

alter table tb_personagens add constraint fk_personagens_classes
foreign key (classes_id) references tb_classes (id);

insert into tb_classes(classe, resistencia)
values ("Guerreiro", 1500),
("Arqueiro", 1000),
("Mago", 1100),
("Mestre", 900),
("Paladino", 1200);

insert into tb_personagens(nome, nivel, ataque, defesa, classes_id)
values
("Aragorn", 45, 1500, 1000, 1),
("Gandalf", 60, 1200, 1500, 3),
("Legolas", 50, 1300, 1200, 2),
("Arwen", 40, 1100, 1300, 5),
("Eowyn", 35, 1250, 800, 1),
("Saruman", 55, 1150, 1400, 3),
("Frodo", 20, 800, 500, 4),
("Tauriel", 38, 1000, 800, 2);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where ataque between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select nome, nivel, ataque, defesa, tb_classes.classe, tb_classes.resistencia
from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id;

select nome, nivel, ataque, defesa, tb_classes.classe, tb_classes.resistencia
from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id
where classe = "Arqueiro";