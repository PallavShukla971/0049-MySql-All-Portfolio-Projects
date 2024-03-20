CREATE DATABASE practice;

USE practice;

CREATE TABLE customers(
customer_id INT,
first_name VARCHAR(30),
last_name VARCHAR(30),
age INT);

ALTER TABLE customers
ADD COLUMN test1 INT;

ALTER TABLE customers
ADD COLUMN test2 INT;

-- DELETE a column from a table

ALTER TABLE customers
DROP COLUMN test1;

-- how to rename a column

ALTER TABLE customers
RENAME COLUMN age TO customers_age;

-- TO check the type of variables you can write the SHOW COMMAND 

SHOW CREATE TABLE customers;

-- To change the type of the variable 
ALTER TABLE customers
MODIFY customers_age DOUBLE;

SHOW CREATE TABLE customers;

-- Now again changing it back to INT

ALTER TABLE customers
MODIFY customers_age INT;

SHOW CREATE TABLE customers;

-- Now if you want to add a NOT NULL constraint 

ALTER TABLE customers
MODIFY customer_id INT NOT NULL;

SHOW CREATE TABLE customers;

-- Now set default to nothing for name one 

ALTER TABLE customers
ALTER COLUMN first_name SET DEFAULT 'nothing';

-- now adding constraints to the tables
-- follow the steps

ALTER TABLE customers
ADD CONSTRAINT customers_age CHECK(customers_age >=18);

-- now while inserting data you cannot add data with age less than 18

-- INSERTING DATA TO TE TABLE TO CHECK THE CONSTRAINT IS WORKING OR NOT

INSERT INTO customers
VALUES (1,'obs','real', 17,43);

-- this didn't run as of the constraint, now we drop the constraint we created

ALTER TABLE customers
DROP CONSTRAINT customers_age;
-- checking if the constraint is still there using the show command
SHOW CREATE TABLE customers;

INSERT INTO customers
VALUES (1,'obc','rio', 15);

SELECT * FROM customers;

-- SUMMARY OF COMMANDS
-- CREATE TABLE, ALTER TABLE,
-- ADD COLUMN, DROP COULUMN,
-- RENAME COLUMN -> RENAME COLUMN age TO customers_age; <-

