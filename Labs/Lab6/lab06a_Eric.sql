--Lab:  Lab 06A
--Name: Eric Blasko

--turn off pause
SET PAUSE OFF

--start spool
spool lab06AOutput_Eric.txt

--List employees whose salaries are at least the same salary of
--employee with ID = 201
SELECT employee_id,first_name,last_name,salary
FROM HR.employees
WHERE salary >=
(Select salary 
 FROM HR.employees
 WHERE employee_id = '201');

--List employees(id,first name, last name, salary, job id) whose
--slaries are at least the max salary of employees with 'IT_PROG'
--job title
SELECT employee_id,first_name,last_name,salary
FROM HR.employees
WHERE salary >= ALL
(SELECT salary
 FROM HR.employees
 WHERE job_id = 'IT_PROG')
ORDER BY employee_id;

--Equivalentnt of the above with different where expression
SELECT employee_id,first_name,last_name,salary,job_id
FROM HR.employees
WHERE salary >=
(SELECT MAX(salary)
 FROM HR.employees
 WHERE job_id ='IT_PROG')
ORDER BY employee_id;

--List supervisors (employee id, first name, last name, salary)
--whose salary is at most as large as the average salary among
--all employees
SELECT employee_id,first_name,last_name,department_id,salary
FROM HR.employees
WHERE employee_id IN
(SELECT manager_id 
 FROM HR.employees)
AND salary <= 
(SELECT AVG(salary)
 FROM HR.employees);

--List of employees (employee id, first name, last name, dept id
--salary) who earn the lowest salary
SELECT employee_id,first_name,last_name,department_id,salary
FROM HR.employees
WHERE salary = 
(SELECT MIN(salary)
 FROM HR.employees);

--List employees who are superviors
SELECT employee_id, first_name, last_name
FROM HR.employees
WHERE employee_id IN
(SELECT distinct manager_id 
 FROM HR.employees);

--Fail to list employees who are not supervisors
SELECT employee_id,first_name,last_name
FROM HR.employees
WHERE employee_id NOT IN
(SELECT distinct manager_id
 FROM HR.employees);

--List employees who are not supervisors
SELECT employee_id,first_name,last_name
FROM HR.employees
WHERE employee_id NOT IN
(SELECT distinct manager_id 
 FROM HR.employees
 WHERE manager_id IS NOT NULL);

--produce stats
SELECT COUNT(*), MIN(salary),MAX(salary),AVG(salary), SUM(salary)
FROM HR.employees;

--List employees whose salaries are at most equal to the average
--salary in the company
SELECT employee_id,first_name,last_name,salary
FROM HR.employees
WHERE salary <=
(SELECT AVG(salary)
 FROM HR.employees);

--List employees whose salaries are at least equal to the max 
--salary of employees with "IT_PROG' job
SELECT employee_id,first_name,last_name,salary,job_id
FROM HR.employees
WHERE salary >=
(SELECT MAX(salary)
 FROM HR.employees
 WHERE job_id = 'IT_PROG')
ORDER BY employee_id;

--List the salary statistic (total no of employees,min/max/average
--salary) for each department
SELECT department_id,count(*), MIN(salary), MAX(salary), AVG(salary)
FROM HR.employees
GROUP BY department_id;

--for each dept (except dept id 100) whose minimum salary is less
--than 8000,list the department id, min salary and max salary
SELECT department_id,count(*),MIN(salary),MAX(salary)
FROM HR.employees
WHERE department_id <> 100
GROUP BY department_id
HAVING MIN(salary) < 8000;

--for each dept whose min salary is at least the same as the min
--salary of employes in dept 100, list the dept id, the number of
--employees in the dept, and salary statistics = min/max/avg salary
SELECT department_id,count(*),MIN(salary),MAX(salary),AVG(salary)
FROM HR.employees
GROUP BY department_id 
HAVING MIN(salary) >=
(SELECT MIN(salary)
 FROM HR.employees
 WHERE department_id = 100);

--list employees(first and last names, department they work for
--salary) who earn the lowest salary in their respective depts.
SELECT first_name,last_name,department_id,salary
FROM HR.employees a
WHERE salary IN
(SELECT MIN(salary) 
 FROM HR.employees b
 GROUP by department_id
 HAVING a.department_id = b.department_id);

spool off
