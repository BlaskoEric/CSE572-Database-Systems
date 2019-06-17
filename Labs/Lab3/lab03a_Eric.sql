--Lab: Lab 3-A
--Name: Eric Blasko

--Bypassing pause
SET PAUSE OFF

--Start outputting query results to text file
spool lab03AOutput_Eric.txt

--Searching for a specific record. searching by employee id
--first name, and last name. Only getting results where employee
--id is 130
SELECT employee_ID,first_name,last_name
FROM HR.employees
WHERE employee_ID = 130;

--List rows of the same column value. List employee id, first name
--last name. Only getting results where department id is 90
SELECT employee_ID,first_name,last_name
FROM HR.employees
WHERE department_id = 90;

--list rows that columns values are in a range. Displaying employee
--id, first name, last name, department id. Only getting results where
-- department id is between 50-150
SELECT employee_ID,first_name,last_name,department_id
FROM HR.employees
WHERE department_id BETWEEN 50 AND 150;

--Displaying employee id, first name and last name. Only getting results
--where department id is 50,70 or 90
SELECT employee_ID,first_name,last_name
FROM HR.employees
WHERE department_id IN(50,70,90);

--List rows that columns values have same string. Displaying employee
--id, first name and last name. Only showing results where first name
--contains "Da". % singe is a wild card so can be any value
SELECT employee_ID,first_name,last_name
FROM HR.employees
WHERE first_name LIKE '%Da%';

--list high paid programmers. Displaying employee id, first name, last
--name, department id, job id and salary. Displaying only job ids that
--are "IT_PROG" and have a salary greater than 5000
SELECT employee_ID,first_name,last_name,department_id,job_id,salary
FROM HR.employees
WHERE job_id='IT_PROG' AND salary >=5000;

--list high paid and managers in the company. Displaying employee id
--first name, last name, department id, job id and salary. Only getting
--results where salary is greater or equal to 10000 or job id contains
--the string "MGR", where % is a wildcard
SELECT employee_ID,first_name,last_name,department_id,job_id,salary
FROM HR.employees
WHERE salary>=10000 OR job_id LIKE '%MGR';

--Displaying results for employee id, first name and last name. Only
--Getting results where first name does not contain the string "DA"
SELECT employee_ID,first_name,last_name
FROM HR.employees
WHERE first_name NOT LIKE '%Da%';

--List rows with combined conditions. Displaying employee id, first name
--last name, job id and salry. Only getting results were job id is 
--"IT_PROG" or "AD_PRES" and salary is greater than 10000
SELECT employee_ID,first_name,last_name,job_id,salary
FROM HR.employees
WHERE job_id='IT_PROG' OR job_id='AD_PRES' AND salary > 10000;

--Displaying employee id, first name, last name, job id and salary.
--Gets same results as above but parenthesis makes it easier to read
SELECT employee_ID,first_name,last_name,job_id,salary
FROM HR.employees
WHERE(job_id='IT_PROG' OR job_id='AD_PRES') AND salary > 10000;

--List employees in order of department id. Displays employee id, dept
--id, first name and last name. Displays results in assending order by
--department id
SELECT employee_ID,department_id,first_name,last_name
FROM HR.employees
ORDER BY department_id;

--Displays employee id, department id, first name, last name and annual
--salary(salary time 12 months).Displays in order by department first
--then annual salary in decending order
SELECT employee_ID,department_id,first_name,last_name,salary*12 Annual
FROM HR.employees
ORDER BY department_id,Annual DESC;

--display employee id, department id, first name and last name. Display
--results in order by department id first, first name second, and last
--name last
SELECT employee_ID,department_id,first_name,last_name
FROM HR.employees
ORDER BY department_id,first_name,last_name;

--Stop outputting to file
spool OFF
