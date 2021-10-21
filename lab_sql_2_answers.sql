use sakila;

-- Select all the actors with the first name ‘Scarlett’.

select * from actor where first_name = "Scarlett" ;


-- Select all the actors with the last name ‘Johansson’.

select * from actor where last_name = "Johansson";


-- How many films (movies) are available for rent?

select count(film_id) from film;


-- How many films have been rented?

select count(rental_id) from rental;


-- What is the shortest and longest rental period?

select min(rental_duration) as shortest_rental, max(rental_duration) as longest_rental from film;


-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.

select min(length) as min_duration, max(length) as max_duration from film;


-- What's the average movie duration?

select avg(length) as movie_duration from film;


-- What's the average movie duration expressed in format (hours, minutes)?

select sec_to_time(avg(length)*60) as average_duration from film;


-- How many movies longer than 3 hours?

select count(length) as n_long_movies from film where length > (3*60);


-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

select concat(first_name, ' ', upper(last_name), ' - ', lower(email)) from staff;


-- What's the length of the longest film title?

select max(char_length(title)) as longest_title from film;