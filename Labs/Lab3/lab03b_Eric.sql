--Lab: lab03-B
--Name: Eric Blasko

--bypassing pause
SET PAUSE OFF

--start outputting query results to text file
spool lab03BOutput_Eric.txt

--displaying department id, employee id, first nane, last name, hire date and years of service.
--Years of service is result of sysdate minus hire date divided by a year. Only displaying reuslts
--where years of service is greater than 15
SELECT department_id, employee_id, first_name,last_name,hire_date,(SYSDATE - hire_date)/365 "Years_service"
FROM HR.employees
WHERE (SYSDATE - hire_date)/365 >= 15;

--displaying department id, employee id, first nane, last name, hire date and years of service.
--Years of service is result of sysdate minus hire date divided by a year. Only displaying reuslts
--where years of service is greater than 15 and department id is 100 or 110
SELECT department_id, employee_id, first_name,last_name,hire_date,(SYSDATE - hire_date)/365 "Years_service"
FROM HR.employees
WHERE (SYSDATE - hire_date)/365 >= 15 AND department_id = 100 OR department_id = 110
ORDER BY department_id, employee_id;

--displaying employee id, first nane, last name, hire date and years of service.
--Years of service is result of sysdate minus hire date divided by a year. Only displaying reuslts
--where higher data is greater than 01-01-2008. Results are displayed in descending order of hire date
SELECT employee_id, first_name,last_name,hire_date,(SYSDATE - hire_date)/365 "Years_service"
FROM HR.employees
WHERE hire_date >= TO_DATE('01-01-2008','DD-MM-YYYY')
ORDER BY hire_date DESC;

--displaying employee id, first nane, last name, hire date and years of service.
--Years of service is result of sysdate minus hire date divided by a year. Only displaying reuslts
--where years of service are greater than 15 and salary is less than 10000. Reuslts are displayed
--in assending order by last name first, then first name
SELECT employee_id, first_name,last_name,salary,hire_date,(SYSDATE - hire_date)/365 "Years_service"
FROM HR.employees
WHERE (SYSDATE - hire_date)/365 >= 15 AND salary < 10000
ORDER BY last_name, first_name;

--Displaying the number of employee id's. This gives the number of employees
SELECT COUNT (employee_id)
FROM HR.employees;

--displaying the min salary from all employees
SELECT MIN(salary) 
FROM HR.employees;

--displaying the max salary from all employees
SELECT MAX(salary)
FROM HR.employees;

--displaying only distinct job id's. Job id's are then displayed in assending order
SELECT DISTINCT job_id
FROM HR.employees
ORDER BY job_id;

--Displaying first names of employees who's name starts with "D" and is less than or equal to 6 char long
SELECT first_name
FROM HR.employees
WHERE first_name LIKE 'D%' AND first_name LIKE '_' 
OR first_name LIKE 'D%' AND first_name LIKE '__'
OR first_name LIKE 'D%' AND first_name LIKE '___'
OR first_name LIKE 'D%' AND first_name LIKE '____'
OR first_name LIKE 'D%' AND first_name LIKE '_____'
OR first_name LIKE 'D%' AND first_name LIKE '______';

--simplified way to do the same as above
SELECT first_name
FROM HR.employees
WHERE first_name LIKE 'D%' AND LENGTH(first_name) <= 6;

--displaying last name, first name and job id where job id contains the string 'IT'. 
SELECT last_name,first_name,job_id
FROM HR.employees
WHERE job_id LIKE UPPER('it%');

--displaying only distinct salaries where salaries are greater than 10000. displayed in asscending order
SELECT DISTINCT salary
FROM HR.employees
WHERE salary >= 10000
ORDER BY salary;

--Displaying employee id, start date, end date, job id, department id, and Years of service. Years of service
--is the result of end date - start date times a year. Results are displayed in order of years of service
SELECT employee_id,start_date,end_date,job_id,department_id,(end_date - start_date)/365 YEARS_SERVICE
FROM HR.job_history
ORDER BY (end_date - start_date)/365;

--stopping output to text file
spool off
