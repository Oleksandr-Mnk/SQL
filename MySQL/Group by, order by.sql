-- 1) Find avg clients salary
SELECT avg(salary)
FROM clients;

-- 2) Find avg clients age 
SELECT avg(age)
FROM clients;

-- 3) Group clients by age 
SELECT count(age), age
FROM clients 
GROUP BY age;

-- 4) Group by clients where age>30
SELECT count(age), age
FROM clients 
GROUP BY age
HAVING age>30;

-- 5) Order clients by age
SELECT * 
FROM clients c
ORDER BY c.age;

-- 6) Find top 3 "richest" clients
SELECT *
FROM clients c 
ORDER BY salary DESC  
LIMIT 3;
-- 7) Start from second client
SELECT *
FROM clients c 
ORDER BY salary DESC  
LIMIT 3
offset 2;