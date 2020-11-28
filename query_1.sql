USE sql_store;

SELECT *
FROM customers
WHERE first_name REGEXP 'Elka|Maria';

SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

SELECT *
FROM customers
WHERE last_name REGEXP 'B[RU]';
