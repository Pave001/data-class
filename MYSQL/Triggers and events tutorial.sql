-- Trigger and events

Select *
From employee_demographics;

Select *
From employee_salary;


DELIMITER $$
CREATE TRIGGER employee_insert
  AFTER INSERT ON employee_salary
  FOR EACH ROW
  BEGIN
      INSERT INTO employee_demographics (employee_id, first_name, last_name)
	VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
 END $$
 DELIMITER ;
 
 INSERT INTO employee_salary (employee_id, First_name, last_name, occupation,
 salary, dept_id)
 VALUE(13, 'jean- Ralphio', 'saperstein', 'Exntertainment 720 CEO', 1000000, NULL);
 
 
 -- EVENTS
 SELECT *
 FROM employee_demographics;
 
 DELIMITER $$
 CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
   DELETE 
   FROM employee_demographics
   WHERE age >= 60;
   END $$
   DELIMITER ;
   
   