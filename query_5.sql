USE sql_store;

-- Use of AND phrase for make compound join conditions
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_Id
	AND oi.product_id = oin.product_id;

-- Implicit Join Syntax

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- Use of OUTER JOIN for pass entries from tables so they don't need to match the ON condition

SELECT 
	c.customer_id,
	c.first_name,
	o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id;

SELECT 
	p.product_id,
	name,
	oi.quantity
FROM order_items oi
RIGHT JOIN products p
	ON oi.product_id = p.product_id;
