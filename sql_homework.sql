use sakila;

select (first_name), (last_name) from actor;

select concat(First_name, last_name) as "Actor Name" from actor;

select (actor_id), (first_name), (last_name) from actor where first_name = "Joe";

select * from actor where last_name like "%gen%";

select * from actor where last_name like "%li%" order by last_name, first_name;

select * from country where country in ("Afghanistan", "Bangladesh", "China");

alter table actor
add description blob;

alter table actor drop column description;

select last_name, count(last_name) from actor group by last_name;

select last_name, count(last_name) from actor where count(last_name) > 1 group by last_name;

set sql_safe_updates =0;
update actor set first_name = "Groucho" where first_name = "Harpo";

update actor set first_name = "Harpo" where first_name = "Harpo";

show create table address;

select staff.first_name, staff.last_name, address.address_id from staff inner join address on address.address_id = staff.address_id;


