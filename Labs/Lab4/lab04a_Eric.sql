--Lab: lab 4A
--Name: Eric Blasko

--bypassing pause
SET PAUSE OFF

--setting line size
SET linesize 85

--start outputting query results to text file
spool lab04AOutput_Eric.txt

--Display's employee id, first and last name and salary. Only displays
--results where first name is all upper case 'DACID'
SELECT employee_ID, first_name, last_name, salary
FROM HR.employees
WHERE UPPER(first_name)= 'DAVID';

--displays 'SQL Course' as 'sql course'
SELECT LOWER('SQL Course')
FROM DUAL;

--Display's length of characters in 'Sqlplus'
SELECT LENGTH('Sqlplus')
FROM DUAL;

--returns position of string at n-th time from them m position
SELECT INSTR('Sqlplus','l',3,2)
FROM DUAL;

--left-justify and pad with '*'. total length of '*' + 24000 will be 10
SELECT LPAD(24000,10,'*')
FROM DUAL;

--right-justify and pad with '*'. total length of '*' + 24000 will be 10
SELECT RPAD(24000,10,'*')
FROM DUAL;

--trims off 'L' from 'Loyal', will display 'oyal'.trims heading and trailing chars
SELECT TRIM('L'FROM'Loyal')
FROM DUAL;

--search text and replace string. Finds 'h' and replaces with 'H'
SELECT REPLACE('Hello home','h','H')
FROM DUAL;


--Round number by two decimal places
SELECT ROUND(45.936,2)
FROM DUAL;

--truncate 2 decimal locations
SELECT TRUNC(45.936,2)
FROM DUAL;

--Mod. 5 mod 3 = 2
SELECT MOD(5,3)
FROM DUAL;

--display employee id, first and last name, and days hired. based off
--current date - hire date. Only displayed for employes whose job id 
--is 'IT_PROG'
SELECT employee_ID,first_name,last_name,
SYSDATE - hire_date AS Days_Hired
FROM HR.employees
WHERE job_id = 'IT_PROG';

--dislay employee id, first and last name, and months hired. Found
--by difference between hire date and current date. Only displayed
--for employees who job id is 'IT_PROG'
SELECT employee_ID,first_name,last_name,
ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0) AS Months_Hired
FROM HR.employees
WHERE job_id = 'IT_PROG';

--add 6 months
SELECT ADD_MONTHS('11-JAN-96',6)
FROM DUAL;

--get date of next friday
SELECT NEXT_DAY('01-SEP-95','FRIDAY')
FROM DUAL;

--get last date of the month
SELECT LAST_DAY('01-FEB-95')
FROM DUAL;

--get first date of the nearest month
SELECT ROUND(SYSDATE,'MONTH')
FROM DUAL;

--get first date of the current year
SELECT TRUNC(SYSDATE,'YEAR')
FROM DUAL;

--Show todays'date
SELECT TO_CHAR(SYSDATE,'DAY DD MON, YYYY')
FROM DUAL;

--display first and last name and salary in given format. Only displays if
--first name in upper case is 'DAVID
SELECT first_name, last_name, TO_CHAR(salary,'L9,999,999.00')
FROM HR.employees
WHERE UPPER(first_name) = 'DAVID';

--display employee id, first and last name and months hired (found rounding
--differents of months between hire date and current date. Only displays
--for when job id = 'IT_PROG'
SELECT employee_ID,first_name,last_name,
ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0) AS Months_Hired
FROM HR.employees
WHERE job_id = 'IT_PROG';

--display first and last name, salary, commission percent and bonus using 
--NVL2. If first expr is null use expr 3 else use expr 2
SELECT first_name,last_name,salary,commission_pct,
NVL2(commission_pct,salary*commission_pct,salary*0.1) bonus
FROM HR.employees;

--display first and last name, salary and commission percent. Uses calesce
--to display bonus. If first exp is null bonus is exp2, else it is expr 1
SELECT first_name, last_name,salary,commission_pct,
COALESCE(salary*commission_pct,salary*0.1) bonus
FROM HR.employees;

--display first and last name, salary, and bonus using case. bonus is
--assinged based on the value of job_id
SELECT first_name, last_name,salary,
CASE job_id
    WHEN 'IT_PROG' THEN salary*0.25
    WHEN 'ST_CLERK' THEN salary*0.3
    ELSE salary*0.1
END Bonus
FROM HR.employees;

--display first and last name, slary and bonus using decode method
SELECT first_name,last_name,salary,
DECODE(job_id,
    'IT_PROG', salary*0.25,
    'ST_CLERK', salary*0.3,
    salary*0.1) Bonus
FROM HR.employees;
