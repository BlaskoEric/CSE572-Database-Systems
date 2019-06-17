--Name: Eric Blasko
--Lab:  Lab08 B Report

--4.Report. Display job id, number of staff, average salary
--  min salary, max salary, total salary of all job id types.
--  sort by job id, and produce a clean and easy to read
--  report. Report is spooled to a seperate file than the
--  queries above.

SET LINESIZE 80
SET PAGESIZE 60
SET PAUSE OFF
SPOOL lab08B_Report_Eric.txt

SET FEEDBACK OFF
TTITLE CENTER 'EMPLOYEE SALARY' SKIP 1 CENTER 'AS OF' _DATE
BTITLE CENTER 'Page:'SQL.PNO
BREAK ON job_id
COLUMN job_id HEADING 'Job|Catergory'
COLUMN COUNT(*) HEADING 'No Staff'
COLUMN AVG(salary) HEADING 'Avg Salary'
COLUMN MIN(salary) HEADING 'Min Salary'
COLUMN MAX(salary) HEADING 'Max Salary'
COLUMN SUM(salary) HEADING 'Total Salary'
--
SELECT job_id,COUNT(*),AVG(salary),MIN(salary),
MAX(salary),SUM(salary)
FROM HR.employees
GROUP BY job_id
ORDER BY job_id;

SET FEEDBACK ON
CLEAR BREAK
COLUMN job_id CLEAR
COLUMN COUNT(*) CLEAR
COLUMN AVG(salary) CLEAR
COLUMN MIN(salary) CLEAR
COLUMN MAX(salary) CLEAR
COLUMN SUM(salary) CLEAR
SPOOL OFF
SET PAUSE ON

