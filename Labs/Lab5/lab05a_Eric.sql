--Lab:  Lab 05A
--Name: Eric Blasko

--turn off pause
SET PAUSE OFF

--start outputing to text file
spool lab05AOutput_Eric.txt

--display employee id, first and last name, department id.Combines every row
--from the left table with every row from the right table. Cartesian join
--with no join condition
SELECT employee_ID, first_name, last_name,
department_name
FROM HR.employees, HR.departments; 

--display employee id, first and last name department id and department name.
--joining condition between two tables is when emploees dpeartment id is equal
--to deparartments department id
SELECT employee_id,first_name,last_name,
HR.employees.department_id,department_name
FROM HR.employees, HR.departments
WHERE HR.employees.department_id =
HR.departments.department_id;

--joining three tables to list employees, departments names and location.
--Displays employee id, frist and last name, department name and city.
--Only shows results where department id is 80 or 90 and location id is equal in
--department and location tables.
SELECT e.employee_id, e.first_name, e.last_name,
d.department_name, l.city
FROM HR.employees e, HR.departments d, HR.locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.department_id IN(80,90);

--display first and last name, grade level, lowest and hightest salary. Only
--displays results were salary is between lowest and hightest salary
SELECT e.first_name, e.last_name, j.grade_level,
j.lowest_sal, j.highest_sal
FROM HR.employees e, HR.job_grades j
WHERE e.salary BETWEEN j.lowest_sal AND j.highest_sal;

--displays first and last name, department id, and department name. Inner join
--excludes employees not haveing department id
SELECT e.first_name, e.last_name, e.department_id,
d.department_name
FROM HR.employees e, HR.departments d
WHERE e.depatment_id = d.department_id;

--display first and last name, department id, department name. Outer join list
--all employees. ordered by first then last name
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM HR.employees e, HR.departments d
WHERE e.department_id = d.department_id(+)
ORDER BY e.first_name, e.last_name;

--equivalent left join for the same query above
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM HR.employees e
LEFT JOIN HR.departments d
ON e.department_id = d.department_id
ORDER BY e.first_name, e.last_name;

--displays first and last name and manager. joins results where employees
--manager id is same as employes employee id match
SELECT e.first_name, e.last_name, m.last_name Manager
FROM HR.employees e, HR.employees m
WHERE e.manager_id = m.employee_id;

--display employee id, first and last name, department name. Cross join
--returns cartisean product
SELECT employee_id, first_name, last_name, department_name
FROM HR.employees CROSS JOIN HR.departments;

--display employee id, first and last name and department name. List 
--employees whose supervisors are also department managers
SELECT employee_id, first_name, last_name, department_name
FROM HR.employees NATURAL JOIN HR.departments;

--displays the same as above but with EquiJoin
SELECT e.last_name, e.department_id, d.department_name
FROM HR.employees e, HR.departments d
WHERE e.department_id = d.department_id
AND e.manager_id = d.manager_id;

--display employee id, first and last name and department name. List
--employees whos are assigned to departments
SELECT employee_id,first_name,last_name,department_name
FROM HR.employees
JOIN HR.departments USING (department_id);

--display employee id, first and last name, dept name and city. List
--employees and there department names and locations
SELECT e.employee_id, e.first_name, e.last_name,
d.department_name, l.city
FROM HR.employees e
JOIN HR.departments d
ON e.department_id = d.department_id
JOIN HR.locations l
ON d.location_id = l.location_id;

--display employee id, first and last name, department name. List 
--all employees and their departments if any
SELECT employee_id, first_name, last_name, department_name
FROM HR.employees
LEFT OUTER JOIN HR.departments USING (department_id);

--dispaly employee id, first and last name, and dept name. List
--all departments and their employees if any
SELECT employee_id, first_name, last_name, department_name
FROM HR.employees e
RIGHT OUTER JOIN HR.departments d
ON e.department_id = d.department_id;

--display employee id, first and last name and department name. List
--employees names and their departments of all employees and of all
--departments
SELECT employee_id, first_name, last_name, d.department_name
FROM HR.employees e
FULL OUTER JOIN HR.departments d
ON e.department_id = d.department_id;

spool off
