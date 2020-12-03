USE	sql_store;

-- Natural Joins
SELECT 
	o.order_id,
	c.first_name
FROM orders o
NATURAL JOIN customer c;

-- Cross Joins
SELECT 
	c.first_name AS customer,
	p.name AS product
FROM customer c
CROSS JOIN products p
ORDER BY c.first_name;

SELECT
	s.name AS shipper,
	p.name AS product
FROM shippers s
CROSS JOIN products p
ORDER BY s.name;

SELECT 
	s.name AS shipper,
	p.name AS product
FROM shippers s, products p
ORDER BY s.name;

