SET SQL_SAFE_UPDATES = 0;
-- CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    car INT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE,
    manufacturer VARCHAR(100),
    model VARCHAR(100),
    year INT,
    color VARCHAR(50)
);

-- DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	customer INT PRIMARY KEY,
    cust_id INT,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(20),
    cust_email VARCHAR(100),
    cust_address VARCHAR(255),
    cust_city VARCHAR(100),
    cust_state VARCHAR(100),
    cust_country VARCHAR(100),
    cust_zipcode VARCHAR(20)
);

-- DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
	salesperson INT PRIMARY KEY,
    staff_id INT,
    name VARCHAR(100),
    store VARCHAR(100)
);

-- DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
	id INT,
    invoice_number INT PRIMARY KEY,
    date VARCHAR(100),
    car INT,
    customer INT,
    salesperson INT,
    FOREIGN KEY (car) REFERENCES cars(car),
    FOREIGN KEY (customer) REFERENCES customers(customer),
    FOREIGN KEY (salesperson) REFERENCES salespersons(salesperson)
);