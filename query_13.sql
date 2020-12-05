USE sql_invoicing;

-- Using subqueries in updates
UPDATE invoices
SET
	payment_total = invoice_total,
	payment_date = due_date
WHERE client_id IN 
(
	SELECT client_id
	FROM clients
	WHERE STATE IN ('NY', 'CA')
);

USE sql_store;

UPDATE orders
SET
	comments = 'Gold Customer'
WHERE customer_id IN
(
	SELECT customer_id
	FROM customers
	WHERE points >= 3000
);

SELECT * FROM orders;
