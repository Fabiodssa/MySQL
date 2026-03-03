use sakila;

create view vendas_cliente as
select
	c.customer_id,
    c.first_name,
    c.last_name,
    p.amount
from customer c
join payment p on c.customer_id = p.payment_id;
