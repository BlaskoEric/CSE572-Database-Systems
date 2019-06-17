
SET PAUSE OFF

spool testHROutput_Eric.txt  
   
-- provide comments for your tables in data dictionary
  
COMMENT ON TABLE Employee IS 'Employees at CSUSB';
COMMENT ON TABLE Department IS 'Employees at CSUSB';
COMMENT ON TABLE Dept_Locations IS 'locations of Departments';
COMMENT ON TABLE Project  IS 'Name of Projects ';
COMMENT ON TABLE Dependent IS 'Name of employee''s dependent';
COMMENT ON TABLE Work_ons IS 'Name of projects an employee is involved';

-- provide comments for table columns in data dictionary

COMMENT ON COLUMN Employee.SSN IS 'Social Security Number';
COMMENT ON COLUMN Employee.Fname IS 'Employee''s First Name';
COMMENT ON COLUMN Employee.Lname IS 'Employee''s Last Name';
COMMENT ON COLUMN Employee.Minit IS 'Middle name intial';
COMMENT ON COLUMN Employee.Bdate IS 'Date of Birth';
COMMENT ON COLUMN Employee.Sex IS 'Gender, F or M';
COMMENT ON COLUMN Employee.Salary IS 'Monthly Salary';
COMMENT ON COLUMN Employee.super_ssn IS 'SSN of employee''supervisor';
COMMENT ON COLUMN Employee.Dno IS 'Department number where employee works';
COMMENT ON COLUMN Employee.Address IS 'Employee''s address';


-- formatting output 

COLUMN table_name FORMAT A20
COLUMN column_name FORMAT A20
COLUMN comments FORMAT A40 WRAPPED
SET LINESIZE 132

-- Query comments of tables. 
SELECT table_name, comments
FROM user_tab_comments
WHERE table_name IN  ('EMPLOYEE','DEPARTMENT','DEPT_LOCATIONS',
      'PROJECT','DEPENDENT','WORK_ONS');

-- Query comments of tables'columns. 
SELECT table_name, column_name, comments
FROM user_col_comments
WHERE table_name IN  ('EMPLOYEE','DEPARTMENT','DEPT_LOCATIONS',
      'PROJECT','DEPENDENT','WORK_ONS');



-- Query departments and their managers (first, last name, salary) if any
SELECT D.DNAME, E.SSN, E.FNAME, E.LNAME, E.SALARY, D.MGR_STARTDATE
   FROM  DEPARTMENT D, EMPLOYEE E
   WHERE D.Mgr_SSN = E.SSN(+)
   ORDER BY D.DNAME; 


-- create view for the above query
-- drop view if created before
DROP VIEW deptmgr;
CREATE VIEW deptmgr AS
   SELECT D.DNAME, E.SSN, E.FNAME, E.LNAME, E.SALARY, D.MGR_STARTDATE
   FROM  DEPARTMENT D, EMPLOYEE E
   WHERE D.Mgr_SSN = E.SSN(+)
   ORDER BY D.DNAME; 

-- show the view
DESC deptmgr
SELECT * FROM deptmgr;  
SELECT DNAME AS DEPARTMENT, LNAME||', '||FNAME AS "MANAGER", SALARY
	FROM deptmgr;

   
-- Query supervisors (first, last name, salary) in the company
SELECT S.FNAME, S.LNAME, S.SALARY, E.FNAME, E.LNAME
   FROM EMPLOYEE E, EMPLOYEE S
   WHERE S.SSN = E.SUPER_SSN
   ORDER BY S.FNAME; 

-- query employees ( first, last name) and projects they are working on
CLEAR BREAKS
BREAK ON SSN SKIP 1 ON FNAME SKIP 1 ON LNAME
SELECT SSN, FNAME, LNAME, PNAME
   FROM EMPLOYEE E, WORK_ONS W, PROJECT P
   WHERE E.SSN = W.ESSN
   AND W.PNO = P.PNUMBER
   ORDER BY SSN; 

    
-- Query employees and their dependents   
SELECT E.SSN, E.FNAME, E.LNAME, d.DEPENDENT_NAME
   FROM EMPLOYEE E, DEPENDENT D
   WHERE E.SSN = D.ESSN
   ORDER BY E.SSN; 
   

-- test delete cascade
DELETE FROM EMPLOYEE
	WHERE SSN = '123456789';

	
-- Dependents of this employee, work_ons are deleted cascade, department manager (MGR_SSN) was set to null	
-- run the following to restore back 
INSERT INTO EMPLOYEE  VALUES ('123456789','John','B','Smith','09-JAN-65','731 Fondren, Houston, TX','M',30000,'333445555',5);
INSERT INTO WORK_ONS VALUES ('123456789','1','32.5');
INSERT INTO WORK_ONS VALUES ('123456789','2','7.5');
INSERT INTO DEPENDENT VALUES ('123456789','Michael','M','04-JAN-88','Son');
INSERT INTO DEPENDENT VALUES ('123456789','Alice','F','30-DEC-88','Daughter');
INSERT INTO DEPENDENT VALUES ('123456789','Elizabeth','F','05-MAY-67','Spouse');

UPDATE DEPARTMENT 
  SET MGR_SSN = '123456789', Mgr_startDate = '01-JAN-05'
  WHERE DNUMBER = 2;
  
spool off

	
	
