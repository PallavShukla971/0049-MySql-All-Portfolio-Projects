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

