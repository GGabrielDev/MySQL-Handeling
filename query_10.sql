USE sql_store;

-- Inserting multiple rows
INSERT INTO shippers (name)
VALUES 
	('Shipper1'),
	('Shipper2'),
	('Shipper3');

INSERT INTO products 
	(
		name,
		quantity_in_stock,
		unit_price
	)
VALUES
	(
		'Smartphone - Galaxy S2',
		'40',
		'55.5'
	),
	(
		'Laptop - HP Pavilion 9',
		'25',
		'99.9'
	),
	(
		'Action Figure - Mario',
		'15',
		'13.5'
	);

-- Inserting Hierarchical Rows
INSERT INTO orders
	(
		customer_id,
		order_date,
		status
	)
VALUES
	(
		1,
		'2019-01-02',
		1
	);

INSERT INTO order_items
VALUES
	(
		LAST_INSERT_ID(),
		1,
		1,
		2.95
	),
	(
		LAST_INSERT_ID(),
		2,
		1,
		3.95
	)
