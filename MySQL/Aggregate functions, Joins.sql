-- 1) Count how many cities are in the table of cities
SELECT count(*)
FROM cities;

-- 2) Count how many clients leave their contact number
SELECT count(client_phoneNumber)
FROM clients;

-- 3) Find what is the lowest hotels star rate and the name of these hotels
SELECT hotel_name, min(starsCount)
FROM hotels h ;
-- 4)Find max stars count and display the name of 5 star hotels
SELECT max(starsCount)
FROM hotels h ;

SELECT hotel_name
FROM hotels h 
WHERE starsCount = 5;

-- 5)Count how many rooms from hotel 1(Bucovyna)
SELECT count(*) AS room_count_from_Bucovyna
FROM rooms r 
WHERE r.hotelsid =1;

-- 6) Joininig cities table and hotels table 
SELECT *
FROM cities c
JOIN hotels h 
ON c.cityid =h.cityid;

-- 7) Use Left Join to display all cities and hotels that are located in some of these cities
SELECT *
FROM cities c
LEFT JOIN hotels h 
ON c.cityid =h.cityid;

-- 8) Using full outer join(as MySQL do not have syntaxis for full outer join combination of left, right and Union queries will be used)
SELECT * 
FROM hotels h 
RIGHT JOIN cities c 
ON c.cityid =h.cityid 
UNION ALL 
SELECT * 
FROM hotels h 
Left JOIN cities c 
ON c.cityid =h.cityid WHERE c.cityid IS NULL ;