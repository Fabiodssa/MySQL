use loja;

create table marcas(
	id int not null auto_increment,
    nome_marca varchar (200) not null,
    primary key (id)
);

alter table marcas add origem varchar(255);
