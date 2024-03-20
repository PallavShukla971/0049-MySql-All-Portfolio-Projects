-- +++++++++++++++++++++++++++++++++++++++++++++
-- Going for Operators and Cluses
--

USE world;

SHOW CREATE TABLE city;
SELECT * FROM city;

SELECT * FROM country;

-- LOGICAL OPERATORS
-- AND, OR, NOT

-- wE ARE SELCTING countries in asia havig population greater than 1 million

SELECT code, name, continent 
FROM country
WHERE continent = 'Asia';

-- now adding a condition

SELECT code, name, continent, population
FROM country
WHERE continent = 'Asia' AND population > 100000000 ;

-- NOW some basic use of Logical operators

SELECT 1 AND 1;
SELECT 1 AND 0;
SELECT 1 AND NULL;
SELECT 0 AND NULL;
SELECT 0 AND 0;

-- NOW we go for the OR Operator

SELECT code, name, continent, population
FROM country
WHERE continent ='Asia' OR population > 100000000 ;

SELECT 1 OR 1;
SELECT 1 OR 0;
SELECT 1 OR NULL;
SELECT 0 OR NULL;
SELECT 0 OR 0;










-- +++++++++++++++++++ SUMMARY ++++++++++++++++++++
-- USE OF AND operator - used as adding an extra condition 
-- 
