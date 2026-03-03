use sakila;
select * from payment
where amount > (select avg(amount) from payment); -- subQuey

select * from payment
where amount = (select max(amount) from payment where customer_id= 2);

/*select * from payment p
where amount = (select max(amount) from payment pp
group by pp.customer_id);*/
 
select 
	customer_id as cliente,
	max(amount) as maximo,
    count(customer_id) as compras
from payment
group by customer_id;

select 
	customer_id as cliente,
	max(amount) as maximo,
    count(customer_id) as compras
from payment
group by customer_id
having compras > 40;

select 
	first_name,
    last_name,
    email
from customer 
where customer_id in
	(select 
		customer_id
	from payment
	group by customer_id
	having count(*) > 40)

