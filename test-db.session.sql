-- #1 Amount of actors with last name Wahlberg
-- 2
SELECT COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg';

-- #2 Amount of payments between 3.99 and 5.99
-- 5607
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- #3 Film the store has the most of in inventory
-- The store has 8 of a lot of films. One of them has an ID of 193
-- That probably means I did this wrong, but I can't find the problem
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC

-- #4 Amount of customers with last name William
-- 0
SELECT *
FROM customer
WHERE last_name = 'William'

-- #5 Employee with most sales
-- 1
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id)

-- #6 Amount of district names
-- 378
SELECT COUNT(DISTINCT district)
FROM address

-- #7 Film with most actors in it
-- 508
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC

-- #8 Amount of customers with last names ending in 'es' from store 1
-- 13
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'

-- #9 Amount of payment amounts with >250 rentals for customer ids 380-430
-- 3
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250

-- #10 Amount of rating categories
-- 5
SELECT COUNT(DISTINCT rating)
FROM film

-- #10 Most common rating
-- PG-13
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC