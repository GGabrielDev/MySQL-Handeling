USE sql_store;

-- Using the IS NULL
SELECT * FROM orders
WHERE shipped_date IS NULL;

-- Using the ORDER BY clause and DESC
SELECT *  FROM customers
ORDER BY state DESC, first_name DESC;

-- Shorting selected columns using other columns as reference
SELECT first_name, last_name FROM customers
ORDER BY birth_date;

SELECT *, quantity * unit_price AS total_price 
FROM order_items
WHERE order_id = 2 
ORDER BY total_price DESC;
