-- Group BY

select *
FROM employee_demographics;

select gender
FROM employee_demographics
group by GENDER
;

select gender, AVG(AGE), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
group by gender
;

-- ORDER BY
select *
FROM employee_demographics
ORDER BY first_name ASC;

-- ORDER BY
select *
FROM employee_demographics
ORDER BY first_name DESC;

-- ORDER BY
select *
FROM employee_demographics
ORDER BY  gender, AGE DESC
;

