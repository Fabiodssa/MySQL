use loja;
create table inventario (
	id int not null auto_increment,
    modelo varchar(200) not null,
    tranmissao varchar(200) not null,
    motor varchar(200) not null,
    combustivel varchar(200) not null,
    marcas_id int not null,
    primary key (id),
    foreign key(marcas_id)  references marcas(id)
);

create table cliente (
	id int not null auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    endereco varchar(255) not null,
    primary key(id)
);

insert into cliente (nome, sobrenome, endereco)
values('fabio', 'salvador', 'rua 1');


