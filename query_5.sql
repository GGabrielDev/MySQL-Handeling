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

-- Use of RIGHT/LEFT (Outer) JOIN for pass entries from tables so they don't need to match the ON condition

SELECT 
	c.customer_id,
	c.first_name,
	o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT 
	p.product_id,
	name,
	oi.quantity
FROM order_items oi
RIGHT JOIN products p
	ON oi.product_id = p.product_id;

-- Outer Joins bettween multiple tables.

SELECT 
	c.customer_id,
	c.first_name,
	o.order_id,
	sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

SELECT 
	o.order_date,
	o.order_id,
	c.first_name AS customer,
	s.name AS shipper,
	os.name AS status
FROM orders o
JOIN customers c
	ON c.customer_id = o.customer_id
LEFT JOIN shippers s
	ON o.shipper_id = s.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY o.order_id;
