-- Lab SQL Joins
use sakila;

-- 1
select count(a.film_id) as Number_Films, a.category_id, name from film_category a
join category c on a.category_id=c.category_id
group by a.category_id;

-- 2
select s.first_name, s.last_name, s.address_id, a.address from staff s
join address a on s.address_id=a.address_id;

-- 3

-- 4
select f.title, count(a.actor_id) as 'N_of_actors' from film_actor fa
join actor a on fa.actor_id=a.actor_id
join film f on fa.film_id=f.film_id
group by f.title;

select f.title, count(a.actor_id) as 'N_of_actors' from film_actor fa
join actor a on fa.actor_id=a.actor_id
join film f on fa.film_id=f.film_id
where 'N_of_actors' = '0'
group by f.title; 

-- why do I have 3 missing movies?

-- 5
select c.first_name, c.last_name, sum(p.amount) as Total_amount_paid from customer c
join payment p on c.customer_id=p.customer_id
group by first_name
order by c.last_name
;