-- UNIONS

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'OLD man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender ='male'
union
SELECT first_name, last_name, 'OLD lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
union
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

