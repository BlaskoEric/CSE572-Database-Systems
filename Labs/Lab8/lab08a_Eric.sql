--Name:     Eric Blasko
--Lab:      Lab08 A 

SET PAUSE OFF

SPOOL lab08AOutput_Eric.txt

--List employees with a job-title
SELECT employee_ID,first_name,last_name,job_id,salary
FROM HR.employees
WHERE UPPER(job_id) = UPPER('&job_title')
ORDER BY employee_ID;

--List employees with a job-title = 'IT_PROG'
DEFINE Job_title = 'IT_PROG'
SELECT employee_ID,first_name,last_name,job_id,salary
FROM HR.employees
WHERE UPPER(job_id) = UPPER('&Job_title')
ORDER BY employee_ID;

--List employees with varying columns, conditions and orders
--columnlist:first_name,last_name,salary
--conditions: UPPER(job_id) = 'IT_PROG'
--orders: employee_id
SELECT &columnlists
FROM HR.employees
WHERE &conditions
ORDER BY &orders;

--substitution variables are used at different clauses
--columnList: department_id,salary
UNDEFINE columnList
SELECT employee_ID, first_name, last_name, &&columnList
FROM HR.employees
ORDER BY &columnList;

SPOOL OFF

