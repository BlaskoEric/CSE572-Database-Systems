--Name:     Eric Blasko
--Lab:      lab 8 Report

--Report

--Set page size and start report
SET LINESIZE 80
SET PAGESIZE 60
SET PAUSE OFF
spool report_Eric.txt

--setup of title, footer, and column headings
SET FEEDBACK OFF
TTITLE CENTER 'EMPLOYEE REPORT' SKIP 1 CENTER 'As of ' _DATE
BTITLE CENTER 'Page:'SQL.PNO
BREAK ON job_id
COLUMN job_id HEADING 'Job|Category'
COLUMN Salary HEADING 'Salary' FORMAT $99,999.99

--Starting the query
SELECT job_id, last_name ||', '|| first_name AS Employee, salary
FROM HR.employees
WHERE salary > 5000
ORDER BY job_id, last_name;

--clearing all column headers anc breaks
SET FEEDBACK ON
CLEAR BREAK
COLUMN job_id CLEAR
COLUMN Salary CLEAR
spool OFF
SET PAUSE ON


