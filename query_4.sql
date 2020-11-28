USE sql_store;

-- Use of (INNER) JOIN clause and ON phrase for show columns form differents tables and using aliases for table names.
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

SELECT order_id, oi.product_id, p.name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id
ORDER BY order_id;

-- Use of JOIN for show columns form tables in diferent databases.
SELECT *
FROM order_item oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id
ORDER BY order_id;

-- Joining a table with itself.
USE sql_hr;

SELECT e.employee_id, e.first_name, 
	m.first_name as manager
FROM employees e
JOIN employees m
 ON e.reports_to = m.employee_id;

-- Joining multiple tables.

USE sql_store;

SELECT 
	o.order_id, o.order_date,
	c.first_name, c.last_name,
	os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;

USE sql_invoicing;

SELECT
	p.client_id AS 'Client ID', 
	c.name AS Name,
	p.invoice_id AS 'Invoice ID',
	p.date AS Date,
	p.amount AS Amount,
	pm.name AS 'Payment Method'
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	ON p.client_id = c.client_id
ORDER BY p.client_id;
