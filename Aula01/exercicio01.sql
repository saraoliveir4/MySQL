create database db_empresa;

use db_empresa;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255),
datanascimento date,
departamento varchar(255),
cargo varchar (255),
salario decimal (10,2),
primary key (id)
);

select * from tb_colaboradores;

insert into tb_colaboradores(nome, datanascimento, departamento, cargo, salario)
values ("Sara Oliveira", "1998-04-02", "TI", "Desenvolvedor", 4500.00),
("Alvaro Monteiro", "2004-08-24", "TI", "Estagiário", 2500.00),
("Davi Pereira", "1989-01-05", "RH", "Recrutador", 4000.00),
("Giovana Guimarães", "1990-04-15", "TI", "Tech Lead" , 10000.00),
("Paulo Silva", "1985-05-28", "RH", "Gerente", 6000.00);

select * from tb_colaboradores where salario > 2000.00;

select * from tb_colaboradores where salario < 2000.00;

update tb_colaboradores set salario = 12000.00 where id = 4; 