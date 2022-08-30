--Question 1: How many actors are there with the last name 'Wahlberg'?
--Answer: 2 Wahlberg's and they are Nick and Daryl.
SELECT first_name,last_name
FROM actor
WHERE last_name = 'Wahlberg';

--Question 2: How many payments were made between $3.99 and $5.99
--Answer: 5607 payments were made between $3.99 and $5.99
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

--Question 3: What film does the store have the most of? (search inventory)
--Answer: There are 8 films tied at 1000 copies in the store.
SELECT film_id
FROM inventory
ORDER BY film_id DESC;

--Question 4: How many customers have the last name 'Wilson'?
--Answer: 0, No one has the last name of William in the customer list.
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';

--Question 5: What store employee (get the id) sold the most rentals?
--Answer: Store Employee 1 has sold the most rentals at 8040 rentals.
SELECT (staff_id), COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

--Question 6: How many different district names are there?
--Answer: There are 378 district names.
SELECT (district)
FROM address
GROUP BY district
ORDER BY district;

--Question 7: What film has the most actors in it? 
--Answer: Film number 508 has the most actors in it with 15.
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

--Question 8: From store_id 1, how many customers have a last name ending with 'es'?
--Answer: 13 customers from store_id 1 have a last name ending in 'es'.
SELECT (store_id), COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id;

--Question 9: How many payments had a number of rentals above 250 customers with ids between 380 and 430?
--Answer: There are three payment amounts that totalled over 250 rentals by customers with ids between 380 and 430.
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) >250;

--Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
--Answer: There are 5 rating categories and PG-13 has the most ratings with 223.
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;