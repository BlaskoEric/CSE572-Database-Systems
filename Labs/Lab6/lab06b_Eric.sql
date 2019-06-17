--Lab: Lab 6B Query
--Name: Eric Blasko

--turn off pause
SET PAUSE OFF

--start output spool
spool lab06BOutput_Eric.txt

--1. display employee id, last name and hire date of any employee
--   in the same department as ZlotKey, excluding Zlotkey. Sorted
--   by employee id
SELECT employee_id,last_name,hire_date
FROM HR.employees
WHERE department_id = (SELECT department_id
                       FROM HR.employees
                       WHERE last_name = 'Zlotkey')
AND last_name <> 'Zlotkey'
ORDER BY employee_id;

--2. display employee id and last names of all employees who earn
--   more than average salary of all employees. Sorted by ascending
--   order of salary, then employee id
SELECT department_id,last_name
FROM HR.employees
WHERE salary > (SELECT AVG(salary)
                 FROM HR.employees)
ORDER BY salary ASC, employee_id;

--3. display employee id and last name of all employees whose dept
--   location id is 1700
SELECT employee_id,last_name
FROM HR.employees
WHERE department_id IN (SELECT department_id
                        FROM HR.departments
                        WHERE location_id = '1700');

--4. display employee id, last name and job id of all employees
--   who reports to 'King'. King is manager of employees
SELECT employee_id,last_name,job_id
FROM HR.employees
WHERE manager_id IN (SELECT employee_id
                    FROM HR.employees
                    WHERE last_name = 'King');

--5. display employee id, last names and job id of all employees in
--   the 'Executive' departments
SELECT employee_id,last_name,job_id
FROM HR.employees
WHERE department_id IN (SELECT department_id
                        FROM HR.departments
                        WHERE department_name = 'Executive');

--6. display department id, number of staff, average salary, min salary
--   max salary, and total salary of all departments. Sorted by dept id
SELECT department_id,COUNT(*) as NO_STAFF,AVG(salary) as AVG_SALARY,
MIN(salary) AS MIN_SALARY,MAX(salary) AS MAX_SALARY,SUM(salary) AS TOTAL_SALARY
FROM HR.employees
GROUP BY department_id
ORDER BY department_id;

--7. display department id, number of staff, average salary, min salary
--   max salary, and total salary of departments between 50 and 100 only.
--   Sorted by department id
SELECT department_id,COUNT(*) as NO_STAFF,AVG(salary) as AVG_SALARY,
MIN(salary) AS MIN_SALARY,MAX(salary) AS MAX_SALARY,SUM(salary) AS TOTAL_SALARY
FROM HR.employees
WHERE department_id BETWEEN 50 AND 100
GROUP BY department_id
ORDER BY department_id;

--8. display job id, number of staff, average salary, min salary, max salary
--   total salary of all job id types. Sorted by job id
SELECT job_id,COUNT(*) as NO_STAFF,AVG(salary) as AVG_SALARY,
MIN(salary) AS MIN_SALARY,MAX(salary) AS MAX_SALARY,SUM(salary) AS TOTAL_SALARY
FROM HR.employees
GROUP BY job_id
ORDER BY job_id;

--9. display job id, number of staff, average salary, min salary, max salary
--   and total salary of all job id whose average salary is greater than 5000.
--   Sorted by job id
SELECT job_id,COUNT(*) as NO_STAFF,AVG(salary) as AVG_SALARY,
MIN(salary) AS MIN_SALARY,MAX(salary) AS MAX_SALARY,SUM(salary) AS TOTAL_SALARY
FROM HR.employees
GROUP BY job_id
HAVING AVG(salary) > 5000
ORDER BY job_id;

spool off
