# 0049-MySql-All-Portfolio-Projects
Hey Everyone, please find all MySql Projects.

# Projects can be made visible on a Zoom Call

Here is the list of all SQL work by me:

###########################################   SQL ##############################################

0030 ----------------- 0030-SQL-Data-Analayst-Basic  -----------------

0031 ----------------- 0031-Sql-Part-2 -----------------

0032 ----------------- 0032-Sql-Practice-part-3 -----------------

0033 -----------------  -----------------

0034 -----------------  -----------------

0035 -----------------  -----------------

0036 -----------------  -----------------

0037 -----------------  -----------------

0038 -----------------  -----------------

0039 -----------------  -----------------

0040 -----------------  -----------------

0041 -----------------  -----------------

0042 -----------------  -----------------

0043 -----------------  -----------------

0044 -----------------  -----------------

0045 -----------------  -----------------

0046 -----------------  -----------------

0047 -----------------  -----------------

0048 -----------------  -----------------

0049 ----------------- 0049-MySql-All-Portfolio-Projects -----------------

|||||||||||||||||||||||||||||||||||||||||||||||||||||||

Notes from practice :

# Practice 1
Hey there a new Repo Starting for Sql Practice


Basic SQL PART 1

Adding the commands in text so if anyone requires can download and use.

-- this is the basic commands on how to use a database 
-- how to create delete or make a table 

-- Here we have covered the DQL command that is the data query language command 
-- basic command in it is the select command
CREATE DATABASE students_info;

USE students_info;

CREATE TABLE students(
student_id INT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30),
date_of_birth DATE,
PRIMARY KEY(student_id));

CREATE TABLE courses(
course_id INT NOT NULL,
course_name VARCHAR(30),
PRIMARY KEY(course_id));

DROP TABLE grades;

CREATE Table grades(
grade_id INT NOT NULL,
student_id INT,
course_id INT,
grade FLOAT,
FOREIGN KEY(student_id) REFERENCES students(student_id));

-- commit

ALTER TABLE grades
ADD PRIMARY KEY(grade_id);

ALTER TABLE grades
ADD FOREIGN KEY(course_id) REFERENCES courses(course_id);


# Practice 2

# Sql-Part-2

USE students_info;

INSERT INTO students
VALUES(1,'Jack','Lee','2000-02-01');

SELECT *
FROM students;

INSERT INTO students(student_id, first_name, last_name, date_of_birth)
VALUES(2,'John', 'LA', '1999-01-1');

-- here it is shown that you can interchamge the order by secifying the column names in the starting

INSERT INTO students(first_name, student_id, last_name, date_of_birth)
VALUES('xoo', 3 , 'LA', '1999-01-1');

-- Now we are Proceeding with mulitiple values 

INSERT INTO students
VALUES
(4, 'Chistristian' , 'gome' , '2000/02/16'),
(5, 'Leo' , 'Rio' , '2003/10/01'),
(6, 'Chaman' , 'Lalit' , '2003/08/14');

-- so we added multiple entries in our table

-- Now moving to deleting rows

DELETE FROM students 
WHERE student_id = 1;

SELECT *
FROM students;

DELETE FROM students 
WHERE date_of_birth = '2000-02-16';

SELECT *
FROM students;


-- SELECT IS USED TO RETRIVE DATA 
-- WHERE IS USED TO PUT CONDITIONS

-- UPDATE COMMAND 

UPDATE students 
SET last_name = 'TIK'
WHERE student_id = 2;

UPDATE students 

SET last_name = 'Lii'

WHERE student_id = 3;

-- NOW IF you want to update multiple attributes in a row 

UPDATE students 
SET first_name = 'Chris' , date_of_birth = '1998-11-01'
WHERE student_id = 5;
 
 
-- NOW we are duplicating the table 

CREATE TABLE new_students AS
SELECT * FROM students;

SELECT *
FROM new_students;

DROP TABLE new_studnets; -- made a wrong table 

-- Now officially how to delete a table

DROP TABLE new_students;

-- DELTE all data from students table without delteing the column names
-- use TRUCATE command

TRUNCATE TABLE new_students;

-- NOW VIEW command 

-- VIEW


USE sakila;

SELECT * FROM actor;

CREATE VIEW DAVIS AS
SELECT first_name, last_update
FROM actor
WHERE last_name = 'DAVIS';

SELECT * FROM davis;

DROP VIEW davis;

# Practice 3


================================================


-- now PART 3


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


=============================================================================================
-- file 2 (TAB 2) for SELECT AND Select distinct

USE sakila;

SELECT * FROM film;

-- now to select only some columns we do

SELECT film_id, title, rental_duration 
FROM film;

-- now to check only the unique values in any any coulumn we use distinct command

SELECT DISTINCT rental_duration
FROM film;

-- Now you want to give these distinct values column name some new name, we use aliases (a different name)

SELECT DISTINCT rental_duration AS no_of_months
FROM film;

-- OPERATORS 

-- COMPARISION OPERATORS

-- =,>,<, >=, <=, <>


SELECT * FROM film;

SELECT title 
FROM film
WHERE rental_duration =6;

-- NOW SELCTING MULTIPLE COLUMNS USING ONE COLUMN

SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration =6;
-- greater than 6
SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration >6;
-- greater or equal to 6 
SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration >=6;
-- less than 6
SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration <6;
-- less or equal to 6 
SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration <=6;

-- different to 6 - that means all the values other than 6
SELECT title, film_id, rental_duration
FROM film
WHERE rental_duration <>6;


-- ----------------- Summary
-- Use selct command with multile values
-- Select Distinct
-- Use AS commnd for aliasing the database column name
-- COMPARISION OPERATORS
-- =,>,<, >=, <=, <>
-- Equal to , Greater than, Less than, Greater than orequal to, less than or equal to, difference operator-this means all the values except this one.
