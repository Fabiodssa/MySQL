use sakila;
select customer.customer_id, customer.first_name, customer.last_name,
		payment.rental_id, payment.amount
 from customer
join payment on customer.customer_id = payment.payment_id;

select cus.customer_id, cus.first_name, cus.last_name,  -- Alies
		pay.rental_id, pay.amount,
        adr.address
 from customer cus
join payment pay on cus.customer_id = pay.payment_id
join address adr on cus.customer_id = adr.address_id;

select customer_id, last_update from customer
union all
select customer_id, last_update from payment
limit 99,110;