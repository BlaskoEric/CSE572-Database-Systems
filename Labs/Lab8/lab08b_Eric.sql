--Name: Eric Blasko
--Lab:  Lab08 B 1-3

--This file contains both the queries for 1-3 and the report
--for question 4. 1-3 are spooled to lab08BOutput and the
--report is spooled to lab08B_Report

SET PAUSE OFF
SPOOL lab08BOutput_Eric.txt

--1.display employee id and last name of all employees whose
--  dept location id is the same as the given conditions
--  conditions: location_id = 1700
SELECT employee_id,last_name
FROM HR.employees
WHERE department_id IN (SELECT department_id
                        FROM HR.departments
                        WHERE &conditions);

--2.display employee id, last name and job id of all employees
--  who reports to the given conditions
--  conditions: last_name = 'King'
SELECT employee_id,last_name,job_id
FROM HR.employees
WHERE manager_id IN (SELECT employee_id
                     FROM HR.employees
                     WHERE &conditions);

--3.display employee id, last name and job id of all employees 
--  in the given conditions department
--  condtions: department_name = 'Executive'
SELECT employee_id,last_name,job_id
FROM HR.employees
WHERE department_id IN (SELECT department_id
                        FROM HR.departments
                        WHERE &condtion);

SPOOL OFF
SET PAUSE ON



