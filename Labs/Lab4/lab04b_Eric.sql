--LAB: lab 04B
--NAME: Eric Blasko

--turn off pause
SET PAUSE OFF

--Start spool
spool lab04BOutput_Eric.txt

--1.displays the current date under a column labeled Date
SELECT SYSDATE AS "DATE"
FROM DUAL;

--2.display employee id, last and first name, commission pct for only employees
--who have commission. ordered by commission pct
SELECT employee_id, last_name,first_name,commission_pct
FROM HR.employees
WHERE commission_pct is NOT NULL
ORDER BY commission_pct;

--3.display employee id, lst and first name, salary and bonus. salary and bonus
--are displayed in currency format. Results are only those whose salary is greater
--than 10000 and ordered by employee id
SELECT employee_id,last_name,first_name,TO_CHAR(salary,'L9,999,999.00') AS salary,
TO_CHAR(salary + (salary * 0.15), 'L9,999,999.00') AS NEW_SALARY
FROM HR.employees
WHERE salary >= 10000
ORDER BY employee_id;

--4. display last name with the first letter capatialized, and the length of the
--last name. Results are only those who last name starts with J, A, or M. Ordered
--by last name
SELECT INITCAP(last_name), LENGTH(last_name)
FROM HR.employees
WHERE last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name LIKE 'M%'
ORDER BY last_name;

--5. display last name, and months worked. Months worked is determined by rounding
-- the months between the current date and hire date. Results are only displayed
-- for those whose job id is MGR or MAN. Ordered by months worked
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0) AS MONTHS_WORKED
FROM HR.employees
WHERE job_id LIKE '%MGR' OR job_id LIKE '%MAN'
ORDER BY ROUND(MONTHS_BETWEEN(SYSDATE,hire_date),0);

--6. display last name and salary with left padding. Padding is filled with '$'.
-- Results only for employees whose job id is IT_PROG and salary is greater or equal
-- to 3000. Ordered by salary
SELECT last_name, LPAD(salary,15,'$')
FROM HR.employees
WHERE job_id LIKE 'IT_PROG' AND salary >= 3000
ORDER BY salary;

--7. display last and first name and bonus. Bonus is determined by NVL2 where if
-- commission pct is null then 'No Bonus' is used, else bonus is comission times
-- salary displayed in currency format. Ordered by last name then first name
SELECT last_name,first_name,
NVL2(commission_pct,TO_CHAR(commission_pct*salary,'L9,999,999.00'),LPAD('No Bonus',23,' '))BONUS
FROM HR.employees
ORDER BY last_name,first_name;

--8. displaying last and first name, job id, and grade. Grade is based on job id 
-- description. Used decode to determine grade. Only displayed for employees whose
-- salary is greater or equal to 10000.Ordered by grade
SELECT last_name,first_name,job_id,
DECODE (job_id,
    'AD_PRES', 'A',
    'ST_MAN', 'B',
    'IT_PROG', 'C',
    'SA_REP', 'D',
    'ST_CLERK', 'E',
    'NA') GRADE
FROM HR.employees
WHERE salary >= 10000
ORDER BY GRADE;

--9. Same as #8 except that CASE syntax is used instead.
SELECT last_name,first_name,job_id,
CASE job_id
    WHEN 'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
    ELSE 'NA' 
END GRADE
FROM HR.employees
WHERE salary >= 10000
ORDER BY GRADE;

spool off
