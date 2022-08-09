--1) Displaying language of films
SELECT f.title AS movie_title,
lang.name AS movie_language
FROM film f 
INNER JOIN
LANGUAGE lang
ON lang.language_id=f.language_id
ORDER BY 1;

--2) Grouping films by rating and counting number
SELECT rating,
count(*) AS film
FROM film f 
GROUP BY rating 
ORDER BY rating ;

--3) Counting in how many films actor played
SELECT a.first_name || ' ' || a.last_name AS full_name, count(*) AS count_of_films
FROM actor a 
INNER JOIN film_actor fa 
ON fa.actor_id =a.actor_id
GROUP BY a.first_name, a.last_name
ORDER BY count_of_films DESC;

--4)Displaying actors with 40+ count of films
SELECT a.first_name || ' ' || a.last_name AS full_name, count(*) AS count_of_films
FROM actor a 
INNER JOIN film_actor fa 
ON fa.actor_id =a.actor_id
GROUP BY a.first_name, a.last_name
HAVING count(*)>40
ORDER BY count_of_films DESC;

--5) Top 5 longest films and full name of actors who played in these films
SELECT max_len_film.title AS movie_title,
a.first_name || ' ' || a.last_name AS full_name, max_len_film.length AS film_length 
FROM 
(SELECT *
FROM film f
ORDER BY f.length DESC
LIMIT(5)) AS max_len_film
INNER JOIN film_actor fa 
ON fa.film_id =max_len_film.film_id
INNER JOIN actor a 
ON a.actor_id =fa.actor_id;