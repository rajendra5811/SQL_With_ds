
WITH email_table AS (
	SELECT email,
		   LEFT(email, CHARINDEX('.', email) -1) AS first_name,
		   RIGHT(email, LEN(email) - CHARINDEX('.', email)) AS last_name
	FROM customer)
select * from customer
SELECT CONCAT(LEFT(LOWER(first_name),1), RIGHT(LOWER(first_name), 1),
	         LEFT(LOWER(last_name),1), RIGHT(LOWER(last_name), 1),
		     LEN(first_name), LEN(last_name),
		     REPLACE(UPPER(name), ' ', '')) AS password
FROM customer;

SELECT CONCAT(
         LEFT(LOWER(first_name), 1),
         RIGHT(LOWER(first_name), 1),
         LEFT(LOWER(last_name), 1),
         RIGHT(LOWER(last_name), 1),
         LENGTH(first_name),
         LENGTH(last_name),
         REPLACE(UPPER(first_name || last_name), ' ', '')
       ) AS password
FROM customer
LIMIT 5;