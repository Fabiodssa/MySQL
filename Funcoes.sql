use sakila;

select 
	max(amount) as Máximo,
	min(amount) as Minimo,
    avg(amount) as média,
    sum(amount) as 'Vendas totais',
    count(amount) as 'Numero de vendas'
from payment
where staff_id = 1

union all

select 
	max(amount) as Máximo,
	min(amount) as Minimo,
    avg(amount) as média,
    sum(amount) as 'Vendas totais',
    count(amount) as 'Numero de vendas'
from payment
where staff_id = 2;

------------------------------------------------------------------------------------
-- select 
--	staff_id,
--	max(amount) as Máximo,
--	min(amount) as Minimo,
--   avg(amount) as média,
--   sum(amount) as 'Vendas totais',
--    count(amount) as 'Numero de vendas'
-- from payment
-- group by staff_id;
---------------------------------------------------------------------------------------
select
    customer_id as Clientes,
    sum(amount) as Total,
    count(customer_id) as 'Numero de compras'
from payment
group by customer_id
order by Total desc;

select
	customer_id,
    cus.first_name as Nome,
    cus.last_name as Sobrenome,
    cus.email,
    sum(pay.amount) as Total,
    count(pay.amount) as 'Numeros de compras'
from payment pay
join customer cus using (customer_id)
group by customer_id
having Total >= 150
order by Total desc;


