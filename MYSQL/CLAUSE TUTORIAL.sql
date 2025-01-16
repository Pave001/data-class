-- WHERE CLAUSE

SELECT *
FROM employee_salary
Where first_name = 'Leslie'
;


sELECT *
FROM employee_salary
Where salary <= 50000
;
SELECT *
FROM employee_demographics
Where gender != 'female'
;

SELECT *
FROM employee_demographics
Where birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical operators
SELECT *
FROM employee_demographics
Where (first_name = 'leslie' AND age= 44) OR age > 55
;

-- LIKE Statement
-- % AND _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'JER%'
;

-- LIKE Statement
-- % AND _
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%ER%'
;

-- LIKE Statement
-- % AND _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

-- LIKE Statement
-- % AND _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

-- LIKE Statement
-- % AND _
SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;