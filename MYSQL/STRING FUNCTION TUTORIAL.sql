-- STRING FUNCTIONS

SELECT LENGTH('SKYFALL');

SELECT First_name, LENGTH(First_name)
FROM employee_demographics
ORDER BY 2
;

select upper('SKY');
SELECT LOWER('SKY');

SELECT First_name, UPPER(First_name)
FROM employee_demographics ; 

SELECT Rtrim('         SKY           ')
;

SELECT First_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
From employee_demographics ;

SELECT ltrim('         SKY           ');

SELECT first_name, REPLACE(First_name, 'a', 'z')
FROM employee_demographics;

SElect LOCATE('R', 'PRINCEWILL');

SELECT first_name, LOCATE('AN',first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,last_name) AS full_name
FROM employee_demographics;