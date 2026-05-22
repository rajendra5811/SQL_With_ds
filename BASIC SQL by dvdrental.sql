SELECT * FROM payment LIMIT 3;
SELECT DISTINCT name FROM language
SELECT film_id,release_year,rental_duration
FROM film
ORDER BY film_id, release_year DESC
LIMIT 5;
SELECT film_id,release_year,rental_duration
FROM film
ORDER BY release_year DESC , film_id
LIMIT 5;
SELECT city
FROM city
WHERE city LIKE 'C%'
LIMIT 5;

SELECT amount
FROM payment
WHERE amount BETWEEN 10 AND 29
LIMIT 5;

SELECT title,description
FROM film
WHERE (title LIKE 'C%' OR title LIKE 'W%')
	AND (description LIKE '%and%' OR description LIKE '%who%')
LIMIT 5;	
	AND (primary_poc NOT LIKE '%eana%');