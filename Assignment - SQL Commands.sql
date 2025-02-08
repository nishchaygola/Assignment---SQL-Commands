USE mavenmovies;

-- Q1. Identify the primary keys and foreign keys in Maven movies db. Discuss the differences
-- A1. A Primary key is a column (or set of columns) in a table that uniquely identifies each row, Whereas a Foreign key is a column (or set of columns) in a table that helps to connect two or more tables.
SELECT *
FROM information_schema.key_column_usage;


-- Q2. List all details of the actors
-- A2.
SELECT *
FROM actor;

-- Q3.List all customer information from DB.
-- A3.
SELECT *
FROM customer;


-- Q4. List different countries.
-- A4.
SELECT DISTINCT country
FROM country;


-- Q5. Display all active customers.
-- A5.
SELECT *
FROM customer
WHERE active = 1;


-- Q6. List of all rental IDs for customers with ID 1.
-- A6.
SELECT rental_id
FROM rental
WHERE customer_id = 1;


-- Q7. Display all the films whose rental duration is greater than 5.
-- A7.
SELECT title
FROM film
WHERE rental_duration > 5;

-- Q8. List the total number of films whose replacement cost is greater than $15 and less than  $20.
-- A8.
SELECT count(*)
FROM film
WHERE replacement_cost > 15
AND replacement_cost < 20;

-- Q9. Display the count of unique first names of actors.
-- A9.
SELECT count(DISTINCT first_name)
FROM actor;

-- Q10. Display the first 10 records from the customer table
-- A10.
SELECT *
FROM customer
LIMIT 10;

-- Q11. Display the first 3 records from the customer table whose first name starts with 'b'
-- A11.
SELECT *
FROM customer
WHERE first_name
LIKE "b%"
LIMIT 3;


-- Q12. Display the names of the first 5 movies which are rated as G.
-- A12.
SELECT title
FROM film
WHERE rating = "G"
LIMIT 5;


-- Q13. Find all customers whose first name starts with "a".
-- A13.
SELECT first_name
FROM customer
WHERE first_name
LIKE "a%";


-- Q14. Find all customers whose first name ends with "a".
-- A14.
SELECT first_name
FROM customer
WHERE first_name
LIKE "%a";


-- Q15. Display the list of the first 4 cities which start and end with ‘a’.
-- A15.
SELECT city
FROM city
WHERE city
LIKE "a%a"
LIMIT 4;


-- Q16. Find all customers whose first name have "NI" in any position.
-- A16.
SELECT first_name
FROM customer
WHERE first_name
LIKE "%NI%";


-- Q17. Find all customers whose first name have "r" in the second position .
-- A17.
SELECT first_name
FROM customer
WHERE first_name
LIKE "_r%";


-- Q18. Find all customers whose first name starts with "a" and is at least 5 characters long.
-- A18.
SELECT first_name
FROM customer
WHERE first_name
LIKE "a____%";


-- Q19. Find all customers whose first name starts with "a" and ends with "o".
-- A19.
SELECT first_name
FROM customer
WHERE first_name
LIKE "a%o";


-- Q20. Get the films with pg and pg-13 ratings using the IN operator.
-- A20. 
SELECT title
FROM film
WHERE rating
IN ("PG", "PG-13");


-- Q21. Get the films with lengths between 50 and 100 using between operators.
-- A21.
Select title
FROM film
WHERE length
BETWEEN 50 AND 100;


-- Q22. Get the top 50 actors using the limit operator.
-- A22.
SELECT *
FROM actor
LIMIT 50;

-- Q23. Get the distinct film IDs from the inventory table.
-- A23. 
SELECT DISTINCT film_id
from inventory;
