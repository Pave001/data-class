-- Temporary Table

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

SELECT *
FROM temp_table; 

INSERT INTO temp_table 
VALUES('ELENA','DAMON','The vampire diaries');

SELECT *
FROM temp_table; 


SELECT *
FROM  employee_salary;

CREATE temporary table salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k; 