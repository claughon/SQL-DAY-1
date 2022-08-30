-- Very first SQL Query, SELECT all records from the actor table
SELECT *
FROM actor;

--Query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

--Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

--Query for a first_name that is equal to NIck using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

--Query for all first_name data with a J using the LIKE and WHERE clauses
--and using the wildcard %
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

--Query for all first_name data that starts with K and has 2 letters
--immediately following using LIKE and WHERE and __
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

--Query for all first_names that start with K and end in TH, with any number of letters in between the two
--Using the LIKE and WHERE clauses
--Using both the wildcard % and underscores __
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name Like 'K__%th';

--Compsring Operators:
--Greater Than (>) 
--Less Than (<)
--Greater Than or Equal (>=)
--Less Than or Equal (<=)
--Not Equal (<>)

--Explore Data with SELECT ALL QUERY (Specific to changing into a new table)
SELECT *
FROM payment;

--Query for customers who paid an amount GREATER THAN $2.00
SELECT customer_id, amount
FROM payment
WHERE amount > 3.00;

--Query for customers who paid an amount less than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

--Query for data that shows customers who paid 
--an amount LESS THAN or EQUAL to $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

--Query for customers that paid an amount
--GREATER THAN or EQUAL to $2.00
--In ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;
--IF you wanted the amount in descending order the ASC would be DESC

--Boolean Operators in SQL
--BETWEEN
--AND

--Query for customers who paid an amount
--BETWEEN $2.00 and $7.99
--Using the BETWEEN and WITH clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 and 7.99;

--Query for customers who paid an amount
--NOT EQUAL to 0 in descending order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

--SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

--Query to display the sum of amounts paid that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99 AND customer_id = 13;

--Query to display the average amounts paid that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--Query to display the count of amount paid that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

--Query to display the DISTINCT count of amounts paid that are greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display the lowest amount that is greater than $7.99
SELECT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

--Query to display the highest amount that is greater than $7.99
SELECT MAX(amount) as Max_Num_Payments
FROM payment
WHERE amount > 7.99;

--Using the GROUP BY clause
-- Query to display all amounts above $7.99 (To display what the GROUP BY cause does)
SELECT amount
FROM payment
WHERE amount = 7.99;

--Query to display the count of the amount equal to $7.99
--WHILE ALSO displaying the acutal amount as well
--Using the GROUP BY clause to produce the count
SELECT amount, COUNT(amount)
FROM payment
WHERE amount = 7.99
GROUP BY amount;

--Query to display customer_ids with the summed amounts for each customer
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

--Query to display summed amounts for each customer_id
--The result given will show similar values from the previous example
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id DESC;

--SQL HAVING CLAUSE

--Query to display customer_ids that show up more than 5 times(if available)
--Group By the customer's email
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__.e%'
GROUP BY email
HAVING COUNT(customer_id) > 0;

SELECT email
FROM customer;
