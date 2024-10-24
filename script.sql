-- HW7

-- 1

SELECT * FROM orders;

SELECT 
    id, 
    date, 
    YEAR(date) AS year, 
    MONTH(date) AS month, 
    DAY(date) AS day
FROM 
    orders;
    
-- 2

SELECT * FROM orders;

SELECT 
    id, 
    date,  
    DATE_ADD(date, INTERVAL 1 DAY) AS day_plus_one
FROM 
    orders;

-- 3

SELECT * FROM orders;

SELECT 
    id, 
    date, 
    UNIX_TIMESTAMP(date) AS timestamp
FROM 
    orders;

-- 4

SELECT * FROM orders;

SELECT count(*)
from orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- 5

SELECT * FROM orders;

SELECT 
    id, 
    date,  
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM 
    orders;


