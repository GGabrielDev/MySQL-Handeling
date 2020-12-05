USE sql_store;

-- Creating a copy of a table (and paste it in a new one)
CREATE TABLE orders_archived AS
SELECT * FROM orders;

-- Truncate a table
TRUNCATE TABLE orders_archived;

-- Insert items in a table from a query.
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

-- Delete a Table
-- DROP TABLE orders_archived;
