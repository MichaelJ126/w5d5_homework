INSERT INTO part (part_name, part_price, part_number)
	VALUES
	('water pump', 200, 272),
	('engine', 8000, 273),
	('exhaust', 150, 274),
	('fan belt', 250, 275);
	
SELECT *
FROM part;



INSERT INTO salesperson (full_name)
	VALUES
	('Hulk Hogan'),
	('Randy (Macho Man) Savage'),
	('Koko B. Ware'),
	('Ultimate Warrior');
	
SELECT *
FROM salesperson;



INSERT INTO service (serial_id, part_id)
	VALUES
	(9, 248),
	(10, 249),
	(11, 250),
	(12, 251);
	
SELECT *
FROM service;


INSERT INTO car (make, model, year)
	VALUES
	('audi', 'tt', 2008),
	('bmw', '528', 2012),
	('volkswagen', 'passat', 2008),
	('toyota', 'celica', 2001);


SELECT *
FROM car;
	

INSERT INTO customer (name, phone, email)
	VALUES
	('andy dufresne', '617-555-7637', 'ssredemption@aol.com'),
	('keyser söze', '857-435-1122', 'theusualsus@hotmail.com'),
	('neo anderson', '001-101-1100', 'redpillbluepill@yahoo.com'),
	('michael knight', '344-674-4345', 'nightrider@gmail.com');

SELECT *
FROM customer;


INSERT INTO service_ticket (ticket_id, customer_id, serial_id, part_id)
	VALUES
	(34, 246, 32, 280),
	(56, 444, 58, 368),
	(76, 981, 67, 261),
	(03, 009, 56, 122);
	
SELECT *
FROM service_ticket;

INSERT INTO mechanic (name)
	VALUES
	('Denzel Washington'),
	('Morgan Freeman');
	
SELECT *
FROM mechanic;


INSERT INTO invoice (invoice_id, amount)
	VALUES
	(56, 1625);
	
SELECT *
FROM invoice;


