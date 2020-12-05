USE sql_invoicing;

-- Exercise creating and filling a table with specific rows and columns
CREATE TABLE invoices_archived AS
	SELECT 
		i.invoice_id,
		i.number,
		c.name AS client,
		i.invoice_total,
		i.payment_date,
		i.invoice_date,
		i.due_date
	FROM invoices i
	JOIN clients c 
		USING (client_id)
	WHERE payment_date IS NOT NULL;

-- Updating a single row
UPDATE invoices
SET
	payment_total = DEFAULT,
	payment_date = DEFAULT
WHERE invoice_id = 3;

-- Updating multiple rows
UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = 3;

USE sql_store;

-- Update practice.
UPDATE customers
SET
	points = points + 50
WHERE birth_date < '1990-01-01';

SELECT * FROM customers;
