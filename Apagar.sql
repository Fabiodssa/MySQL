use sakila;
select*from language;

delete from language
where 
	language_id = 28 or 
	language_id = 27 or
    language_id = 26 or
    language_id = 21 or
    language_id = 24 or
    language_id = 23;