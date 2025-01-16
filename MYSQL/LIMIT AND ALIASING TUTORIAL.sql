-- Limit & Aliasing
SELECT *
FROM employee_demographics
;


SELECT *
FROM employee_demographics
order by age DESC
limit 2, 1 
;

-- Aliasing

SELECT gender, avg(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING  avg(age) > 40 ;