
SELECT COUNT (*) 
FROM payment;

SELECT SUM(amount) AS TOTAL_AMOUNT,
	   MIN(amount),
	   MAX(amount),
	   AVG(amount) AS avg_amt
FROM payment;
SELECT ca.name AS category_name, min(f.rental_rate) AS min_rental_rate
FROM film_category fca
INNER JOIN film f
ON fca.film_id = f.film_id
INNER JOIN category ca
ON fca.category_id=ca.category_id
GROUP BY ca.name
ORDER BY min_rental_rate
LIMIT 5;
SELECT l.name AS language, COUNT(f.title) AS Number_of_films
FROM language l
INNER JOIN film f
ON f.language_id= l.language_id
GROUP BY l.name
HAVING COUNT(*) > 5
ORDER BY Number_of_films DESC;
SELECT DATENAME(MONTH, payment_date),GETUTCDATE() AS cur_date,GETDATE() AS payment_date1, DATEPART(MONTH,payment_date) AS month_no
FROM payment;
SELECT
    DATENAME(MONTH, payment_date) AS month_name,
    GETUTCDATE() AS cur_date,
    GETDATE() AS payment_date1,
    DATEPART(MONTH, payment_date) AS month_no
FROM payment;

SELECT CASE WHEN amount > 5 THEN 'at least 5'
			WHEN amount BETWEEN 1 AND 5 THEN 'Between 1 and 5'
			ELSE 'Less than 1'
			END AS payment_group,
			COUNT(*) AS payment_count
FROM payment
GROUP BY  CASE WHEN amount > 5 THEN 'at least 5'
			WHEN amount BETWEEN 1 AND 5 THEN 'Between 1 and 5'
			ELSE 'Less than 1'
			END
ORDER BY COUNT(*) DESC;
select amount from payment