-- CASE STATEMENTS

SELECT first_name,
last_name,
CASE
   WHEN age <=30 THEN 'young' 
   WHEN age BETWEEN 31 and 50 THEN 'old'
	WHEN age >=50 THEN "on death's door"
   END AS AGE_Bracket
FROM employee_demographics;


-- PAY INCREASE AND BONUS
-- < 50000 = 5% 
-- > 50000 = 7%
-- finaice = 10% bonus
SELECT first_name, last_name, salary, 
CASE
     WHEN salary < 50000 THEN SALARY + (salary * 0.05 )
     when salary > 50000 THEN salary + (salary * 0.07)
END  AS new_salary,
CASE
     WHEN dept_id = 6 THEN  (salary * 0.10)
END  AS bonus
FROM employee_salary;

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT *
FROM parks_departments
;