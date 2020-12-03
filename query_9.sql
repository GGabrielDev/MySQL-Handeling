-- Inserting single rows in a table.
INSERT INTO customers
VALUES (DEFAULT,
	'Gabriel',
	'Ramos',
	'2000-07-17',
	NULL,
	'adress',
	'city',
	'ST',
	DEFAULT);
INSERT INTO customers (
	first_name,
	last_name,
	birth_date,
	address,
	city,
	state)
VALUES (
	'Mauricio',
	'Ramos',
	'2004-01-07',
	'adress',
	'city',
	'ST');
