use sakila;
insert into country
values (default,'Brazil3', '2016-02-15 05:02:19');

insert into city
values (default,'São Paulo2',last_insert_id(),'2065-02-15 05:02:19');