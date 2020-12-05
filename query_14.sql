USE sql_invoicing;

-- Delete caluse for delete rows
DELETE FROM invoices
WHERE client_id = 
(
	SELECT *
	FROM clients
	WHERE name = 'Myworks'
);

-- Restore databeses to original states
SOURCE ./SQL Course Materials/create-databases.sql;
