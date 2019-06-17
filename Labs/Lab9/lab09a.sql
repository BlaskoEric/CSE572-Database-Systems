

-- List all columns of table jobs
DROP VIEW one;
CREATE VIEW one AS
    SELECT * 
    FROM HR.jobs;


-- List two columns / fields only
DROP VIEW two;
CREATE VIEW two AS
    SELECT job_id, job_title 
    FROM HR.jobs;


-- List columns with simple column Alias
DROP VIEW three;
CREATE VIEW three AS
    SELECT job_title, min_salary Minimum_Salary
    FROM HR.jobs;

-- List columns with customised column Alias using double quote
DROP VIEW four;
CREATE VIEW four AS
    SELECT job_title, min_salary*1.2 AS "120% Minimum Salary"
    FROM HR.jobs;


-- List columns with Arithmetic Expression
DROP VIEW five;
CREATE VIEW five AS
    SELECT job_title, min_salary*12 Annual_Minimum 
    FROM HR.jobs;

DROP VIEW six;
CREATE VIEW six AS
    SELECT job_title, min_salary*12 + 2000 New_Minimum
    FROM HR.jobs;

DROP VIEW seven;
CREATE VIEW seven AS
    SELECT job_title, (min_salary+max_salary)/2  Average_Salary
    FROM HR.jobs;

-- List columns with null value
DROP VIEW eight;
CREATE VIEW eight AS
    SELECT last_name, salary, commission_pct
    FROM HR.employees;

DROP VIEW nine;
CREATE VIEW nine AS
    SELECT last_name, salary, 12*salary*commission_pct
    FROM HR.employees;



-- Concatenation of multiple columns
DROP VIEW ten;
CREATE VIEW ten AS
    SELECT job_title || min_salary AS "Job Title Min Salary "
    FROM HR.jobs;

-- Concatenation of multiple columns and literal character strings
DROP VIEW eleven;
CREATE VIEW eleven AS
    SELECT job_id || ',' ||job_title  AS "Job ID, Title "
    FROM HR.jobs;


-- List all minimum salaries 
DROP VIEW twelve;
CREATE VIEW twelve AS
    SELECT min_salary
    FROM HR.jobs;


-- List only unique minimum salaries
DROP VIEW thirteen;
CREATE VIEW thirteen AS
    SELECT DISTINCT min_salary
    FROM HR.jobs;


SELECT * FROM one;
SELECT * FROM two;
SELECT * FROM three;
SELECT * FROM four;
SELECT * FROM five;
SELECT * FROM six; 
SELECT * FROM seven;
SELECT * FROM eight;
SELECT * FROM nine;
SELECT * FROM ten;
SELECT * FROM eleven;
SELECT * FROM twelve;
SELECT * FROM thirteen;


