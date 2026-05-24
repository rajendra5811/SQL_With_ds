/* [Advanced] - SQL Advanced Joins and Performance Tuning */

/*
Write a query with FULL OUTER JOIN to see: 
*/
SELECT *
FROM payment p
FULL OUTER JOIN rental r
ON r.rental_id = p.rental_id
limit 5;


/*
Write a query that left joins 
*/

SELECT *
FROM language l
LEFT JOIN film f
ON f.language_id = l.language_id
	AND l.last_update < f.last_update
	LIMIT 5;

select * from customer
/*
Write a query that uses UNION ALL on two instances (and selecting all columns) of the film table. 
*/

SELECT *
FROM film

UNION ALL

SELECT *
FROM film
LIMIT 5;

/*
Perform the union in your first query (under the Appending Data via UNION header) in a common table
expression and name it same_country. 
*/

WITH same_country AS ( 
  	SELECT *
	FROM  country
	
	UNION ALL

	SELECT *	
	FROM country
)
  
SELECT country, COUNT(*) AS count_of_country
FROM same_country
GROUP BY country;