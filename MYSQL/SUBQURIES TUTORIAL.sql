-- SUBQUERIES

SELECT *
FROM employee_demographics
WHERE employee_id IN 
             (select employee_id
                 FROM employee_salary
				WHERE dept_id = 1)  
                ;
                
select first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT gender, AVG(AGE), MAX(AGE), MIN(AGE), COUNT(AGE)
FROM employee_demographics
GROUP BY gender;

SELECT  AVG (MAX_AGE)
FROM (SELECT gender,
 AVG(AGE)AS avg_age,
 MAX(AGE) AS max_age,
 MIN(AGE) AS min_age,
 COUNT(AGE) AS count_age
FROM employee_demographics
GROUP BY gender ) AS Agg_table