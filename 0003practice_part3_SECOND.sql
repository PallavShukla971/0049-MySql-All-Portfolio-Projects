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

