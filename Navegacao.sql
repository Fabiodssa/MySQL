use sakila;
select actor_id, first_name  from actor
where first_name = 'ADAM' and actor_id <133
order by first_name;

select customer_id,amount, amount-(amount*0.10) AS DESCONTO from payment
where customer_id = 1 AND amount = 0.99;

select * from payment
where amount > 10
order by amount desc;

select * from customer
where store_id = 1 and active != 1;

select* from address
where district = 'alberta' or district = 'texas';-- in ('alberta', 'texas','california')--

select * from payment
where amount between 0.99 and 1.99
order by amount desc;

select * from actor
where first_name like 'a%a'; -- 'a%a', 'a%' e '%a'

select* from address
where address2 is null;

select* from actor
limit 99, 10; -- limita oque deve ser mostrado a partir de um determinado ponto

select* from actor
where first_name regexp '^a|^b';


