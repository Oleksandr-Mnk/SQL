--1) Display all films presented in DB
SELECT * 
FROM film;
--2) Display film's title, its release year and ordered by the title(Ascending order)
SELECT title, release_year 
FROM film 
ORDER BY 1;
--3) Making columns more descriptive
SELECT title AS movie_title, release_year AS date_of_release
FROM film f 
ORDER BY 2,1;
--4) Display possible movie rating
SELECT DISTINCT rating
FROM film
ORDER BY 1 DESC;
--5) Display actors available in DB, order by first name and last name
SELECT actor_id, first_name, last_name
FROM actor a 
ORDER BY 2,3;
--6) Connecting first name to last name to create full name column
SELECT actor_id, first_name || ' ' || last_name AS actor_full_name
FROM actor a 
ORDER BY 2;
--7) Finding actor with the name Cruise
SELECT actor_id, first_name || ' ' || last_name AS actor_full_name
FROM actor
WHERE upper(last_name) = 'CRUISE';
--8)Finding actor with 'BAR' in name
SELECT actor_id, first_name || ' ' || last_name AS actor_full_name
FROM actor
WHERE upper(last_name) LIKE ('BAR%');
--9)Finding actors with name 'CRUISE', 'BARRYMORE' and 'HOPKINS'
SELECT actor_id, first_name || ' ' || last_name AS actor_full_name
FROM actor
WHERE upper(last_name) IN ('CRUISE', 'BARRYMORE', 'HOPKINS')
ORDER BY 2;
