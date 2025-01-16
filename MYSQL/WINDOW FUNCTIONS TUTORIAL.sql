-- window functions

SELECT gender, AVG(SALARY) as avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id= sal.employee_id
GROUP BY gender;

SELECT dem.first_name, dem.last_name, gender, AVG(SALARY) OVER (PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id= sal.employee_id;

SELECT dem.first_name, dem.last_name, gender,salary,
 SUM(SALARY) OVER (PARTITION BY gender order by dem.employee_id) AS ROLLING_TOTAL
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id= sal.employee_id;

SELECT  dem.employee_id, dem.first_name, dem.last_name, gender,salary,
 ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
 RANK()OVER(PARTITION BY gender ORDER BY salary DESC)rank_num,
 DENSE_RANK()OVER(PARTITION BY gender ORDER BY salary DESC)rank_num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id= sal.employee_id;
