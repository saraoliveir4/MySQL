create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
turma varchar(255),
materia varchar(255),
mediageral decimal (2,2),
primary key (id)
);

ALTER TABLE tb_estudantes MODIFY mediageral DECIMAL(4,2);

select * from tb_estudantes;

insert into tb_estudantes(nome, idade, turma, materia, mediageral)
values ("João da Silva", 15, "1A-EM", "Português", 6.00),
("Gabriela Alvarez", 17, "3B-EM", "Matemática", 5.75),
("Juliana Siqueira", 14, "9C-EFII", "Artes", 8.60),
("Gustavo Ribeiro", 13, "8A-EFII", "Ciências", 4.80),
("Felipe Nascimento", 17, "3B-EM", "Física", 5.00),
("Sofia Pinheiro", 16, "2C-EM", "Química", 9.75),
("Heitor de Oliveira", 17, "3A-EM", "Literatura", 4.75),
("Giovana Santos", 15, "1B-EM", "Inglês", 7.50);

select * from tb_estudantes where mediageral > 7.00;

select *from tb_estudantes where mediageral < 7.00;

update tb_estudantes set mediageral = 8.40 where id = 4;