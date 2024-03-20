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


-- this was the part 1 

-- Now moving to part 2

-- We are Learning now DDL Data Defenition Language command 
-- they are use to define the database 
-- Commands like ALter create Deop Truncate command 


DROP DATABASE db_1;
DROP DATABASE db_2;


