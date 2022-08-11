--1) Inserting new city to table 'city' 100- Ukraine id
INSERT INTO public.city
(city, country_id)
VALUES('Lviv', 100);

--2)Displaying all cities with id 100 (Ukraine)
SELECT *
FROM city c 
WHERE country_id =100;

--3) Updating names of city with id 385 and 345 as they are written incorrectly
UPDATE city 
SET city = 'Mukachevo'
WHERE city_id=345;

UPDATE city 
SET city = 'Shostka'
WHERE city_id=385;



