--lab: lab02-A
--Name: Eric Blasko

--bypassing pause
SET PAUSE OFF

--set 75 characters per line
Set linesize 75

--Start outputting query result to text file
spool lab02AOutput_Eric.txt

--List all tables names that are owned by HR. This is searchs for entries
--found in all_tables
SELECT table_name
From all_tables
WHERE owner = 'HR';

--List all attrabutes of the table jobs, which is owned by HR
DESC HR.jobs;

--List all columns and values from the table jobs, which is owned by HR
SELECT *
FROM HR.jobs;

--List specific columns only. These columns include job_id and job_title
--Both of these columns are found in HR.jobs
SELECT job_id, job_title
FROM HR.jobs;

--Simple column Alias. Will display columns job_title and min_salary, however min_salary
--will be renamed with Minimum AS Salarry. No quotes need as Minimum AS Salary is one word
SELECT job_title, min_salary Minimum_AS_Salary
FROM HR.jobs;

--Column Alias of seperate words which includes a special char. Requires 
--double quotes. Expression multiplies min_salary and displays it under 120 Minimum Salary
--header
SELECT job_title, min_salary*1.2 "120% Minimum Salary"
FROM HR.jobs;

--Selecting columns of job title and min salary. Multiplying min salary by 12 to get
--Annual min value. Values will be displayed under Annual_Minimum
SELECT job_title, min_salary*12 Annual_Minimum
FROM HR.jobs;

--Using precedence. Will multiply min_salary by 12, then add 2000 and display it under New_Minimum
SELECT job_title, min_salary*12 + 2000 New_Minimum
FROM HR.jobs;

--Using parenthesis to make sure min_salary and max_salary are added first. After addition, the
--sum is divide by 2 and displayed under Average_Salary
SELECT job_title, (min_salary + max_salary)/2 Average_Salary
FROM HR.jobs;

--displays 3 columns, last name, salary and commission pct. If commission is null value will be blank
SELECT last_name, salary, commission_pct
FROM HR.employees;

--if salary is multiplied with a null value, a null value is displayed
SELECT last_name, salary, 12*salary*commission_pct
FROM HR.employees;

--Concatenation of multiple columns. Will display job title and min salary in same column
SELECT job_title || min_salary AS "Job Title Min Salary"
FROM HR.jobs;

--Concatentation of multiple columns and literals. Will display job id and followed by a ',' then
--job title. Both will be under same column "Job ID, Title"
SELECT job_id || ', ' || job_title AS "Job ID, Title"
FROM HR.jobs;

--List all minimum salaries
SELECT min_salary
FROM HR.jobs;

--Only unique min salaries will be displayed. no duplicates
SELECT DISTINCT min_salary
FROM HR.jobs;

--stop spool
spool off





--
