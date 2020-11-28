-- Using the LIMIT clause
SELECT * FROM customers
LIMIT 3;

-- Placing a offset in the LIMIT clause
SELECT * FROM customers
LIMIT 6, 3;

-- Get the top three loyal customers (points)
SELECT * FROM customers
ORDER BY points DESC
LIMIT 3;
