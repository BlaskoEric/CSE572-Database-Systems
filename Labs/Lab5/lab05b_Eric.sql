--Lab:  Lab 05B
--Name: ERic Blasko

--turn off pause
SET PAUSE OFF

--start spool for output
spool lab05BOutput_Eric.txt

--1. displays employee id, last name, departmet_id and department name. Info
-- is taken from employees and departments tables. Only displaying those
-- where department id from both tables match. Ordered by employe id
SELECT employee_id,last_name, HR.employees.department_id,department_name
FROM HR.employees, HR.departments 
WHERE HR.employees.department_id =
HR.departments.department_id
ORDER BY employee_id;

--2. displays employee id, last name, department id and department name.
-- Results are from employees and departments tables. Results are where
-- department id matchs. If there is no department id in the department
-- table the result is still displayed. Ordered by employee id
SELECT e.employee_id,e.last_name,e.department_id,
d.department_name
FROM HR.employees e, HR.departments d
WHERE e.department_id = d.department_id(+)
ORDER BY e.employee_id;

--3. display job id, department id and location from 
-- employees and departments tables. Only displaying where
-- department id from both tables match and department id is 80
SELECT DISTINCT(e.job_id),e.department_id,d.location_id
FROM HR.employees e, HR.departments d
WHERE e.department_id = d.department_id
AND e.department_id = 80;

--4. display job id, department name and city from three tables.
-- employees table is joined to departments where department id
-- are equal, departments and locaions are joined where location
-- id is equal. displays only where department id is 80,90, and 100
SELECT DISTINCT(e.job_id),d.department_name, l.city
FROM HR.employees e
JOIN HR.departments d
ON e.department_id = d.department_id
JOIN HR.locations l
ON d.location_id = l.location_id
WHERE e.department_id IN (80,90,100);

--5. display last name, department name, city and commisiion pct from
-- three tables. Employees and departments table are joined where 
-- department id are equal and departments and locations tables are
-- joined where location id are equal. Only display results where 
-- commission pct is not a null value
SELECT e.last_name, d.department_name, l.city, e.commission_pct
FROM HR.employees e
JOIN HR.departments d
ON e.department_id = d.department_id
JOIN HR.locations l
ON d.location_id = l.location_id
WHERE e.commission_pct IS NOT NULL;

--6. display last name and department name from employees and departments
-- tables. Tables are joined where department id is equal and display
-- were last name contains an 'a'
SELECT e.last_name,d.department_name
FROM HR.employees e, HR.departments d
WHERE e.department_id = d.department_id
AND e.last_name LIKE '%a%';

--7. display employee id, last name, job id, department name, and city
-- from three tables. employees and departments tables are joing where
-- department id is equal, departments and locations table are joined
-- were location id is equal. Results only displayed for cities who
-- are in Toronto
SELECT e.employee_id,e.last_name,e.job_id,d.department_name,l.city
FROM HR.employees e
JOIN HR.departments d
ON e.department_id = d.department_id
JOIN HR.locations l
ON d.location_id = l.location_id
WHERE l.city LIKE 'Toronto';

--8. display employee id labed as EMP#, last name labeled as Employee,
-- employee id labled as MGR# and last name labeled as Manager. Both
-- tables are the same table but getting different instances of each. 
-- one works for employees info while the second works on managers info.
-- only displays results where manager id = employee id. Ordered by 
-- employees id
SELECT e.employee_id AS EMP#,e.last_name AS Employee,
m.employee_id AS MGR#, m.last_name AS Manager
FROM HR.employees e, HR.employees m
WHERE e.manager_id = m.employee_id
ORDER BY e.employee_id;

--9. display employee id labeled as EMP#, last name labeled as Employee,
-- hire date, employee id labeled as MGR#, and last name labeled as Manager.
-- Resulst are displayed where manager id is equal to employee id and
-- the hire date of the employee is after the managers hire date. Ordered
-- by employee id
SELECT e.employee_id AS EMP#,e.last_name AS Employee,e.hire_date,
m.employee_id AS MGR#, m.last_name AS Manager
FROM HR.employees e, HR.employees m
WHERE e.manager_id = m.employee_id
AND e.hire_date < m.hire_date
ORDER BY e.employee_id;

--10. display employee id, last name, job id, and hire date. Only displays
-- results for those employees whos hire date is after the hire date of
-- the employee 'Davies'
SELECT e.employee_id,e.last_name,e.job_id,e.hire_date
FROM HR.employees e, HR.employees d
WHERE e.hire_date < d.hire_date 
AND d.last_name LIKE 'Davies';

spool off
