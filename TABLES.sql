CREATE TABLE part (
  part_id SERIAL,
  part_name VARCHAR(50),
  part_price NUMERIC(6,2),
  part_number INTEGER,
  PRIMARY KEY (part_id)
);

CREATE TABLE salesperson (
  salesperson_id SERIAL,
  full_name VARCHAR(50),
  PRIMARY KEY (salesperson_id)
);

CREATE INDEX "Key" ON  salesperson (full_name);

CREATE TABLE service (
  service_id SERIAL,
  service_ticket_id INTEGER,
  serial_id INTEGER,
  mechanice_id INTEGER,
  PRIMARY KEY (service_id)
);

CREATE TABLE car (
  serial_id SERIAL,
  make VARCHAR(30),
  model VARCHAR(30),
  year INTEGER,
  PRIMARY KEY (serial_id),
    FOREIGN KEY (serial_id)
      REFERENCES service(service_id)
);

CREATE TABLE customer (
  customer_id SERIAL,
  name VARCHAR(50),
  phone VARCHAR(30),
  email VARCHAR(30),
  PRIMARY KEY (customer_id)
);

CREATE TABLE service_ticket (
  ticket_id SERIAL,
  customer_id INTEGER,
  serial_id INTEGER,
  part_id INTEGER,
  PRIMARY KEY (ticket_id),
    FOREIGN KEY (customer_id)
      REFERENCES customer(customer_id),
    FOREIGN KEY (serial_id)
      REFERENCES car(serial_id),
    FOREIGN KEY (part_id)
      REFERENCES part(part_id)
);

CREATE TABLE mechanic (
  mechanic_id SERIAL,
  name VARCHAR(30),
  PRIMARY KEY (mechanic_id)
);

CREATE TABLE invoice (
  invoice_id SERIAL,
  salesperson_id INTEGER,
  customer_id INTEGER,
  serial_id INTEGER,
  amount NUMERIC(6,2),
  date VARCHAR(20),
  time INTEGER,
  PRIMARY KEY (invoice_id),
    FOREIGN KEY (customer_id)
      REFERENCES customer(customer_id),
    FOREIGN KEY (serial_id)
      REFERENCES car(serial_id),
    FOREIGN KEY (salesperson_id)
      REFERENCES salesperson(salesperson_id)
);




