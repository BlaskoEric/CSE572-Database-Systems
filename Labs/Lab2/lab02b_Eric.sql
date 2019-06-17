--lab: lab02-B
--Name: Eric Blasko

--Ignore pause
SET PAUSE OFF

--Set 100 characters per line
SET linesize 100
--output queries result to text file
spool lab02BOutput_Eric.txt

--Display all tables where HR is the owner
SELECT table_name
FROM all_tables
WHERE owner='HR';

--Listing the attributes of each of the tables
DESC HR.regions;
DESC HR.locations;
DESC HR.departments;
DESC HR.jobs;
DESC HR.employees;
DESC HR.job_history;
DESC HR.job_grades;
DESC HR.countries;

--Displaying columns for job id, job title, max and min salary and difference in salary. The last part
--is the expression of max salary minus min salary which is displayed under difference
SELECT job_id, job_title,max_salary,min_salary,max_salary - min_salary difference
FROM HR.jobs;

--Displaying columns for employee id, first and last name concatinated together and listed under full name, hire date,
--Years employeed with is from the expression system date - hire date divided by 365, and salary date. 
SELECT employee_id,first_name || ', ' || last_name "FULL NAME", hire_date, (SYSDATE - hire_date)/365 "YEARS EMPLOYED", salary
FROM HR.employees;

--displaying the count of employee 
SELECT COUNT(employee_id)
FROM HR.employees;

--displaying all distinct salarys in table
SELECT DISTINCT salary
FROM HR.employees;

--Displaying count of all distinct salaries in the table
SELECT COUNT(DISTINCT salary)
FROM HR.employees;

spool off
