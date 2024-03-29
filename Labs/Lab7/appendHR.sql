
-- Defer constraints	
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO DEPT_LOCATIONS VALUES ('1','Houston');
INSERT INTO DEPT_LOCATIONS VALUES ('2','Stafford');
--INSERT INTO DEPT_LOCATIONS VALUES ('3','Bellaire');
INSERT INTO DEPT_LOCATIONS VALUES ('4','Dallas');
INSERT INTO DEPT_LOCATIONS VALUES ('5','Houston');


INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('ProductX','1','Bellaire','5');
INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('ProductY','2','Sugarland','5');
INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('ProductZ','3','Houston','5');
INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('Computerization','10','Stafford','4');
INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('Reorganization','20','Houston','1');
INSERT INTO PROJECT (pname, pnumber, pLocation, dnumber ) VALUES ('Newbenefits','30','Stafford','4');


INSERT INTO EMPLOYEE VALUES ('888665555','James','E','Borg','10-NOV-37','450 Stone, Houston, TX','M','55000','','1');
INSERT INTO EMPLOYEE VALUES ('333445555','Franklin','T','Wong','08-DEC-73','638 Voss, Houston, TX','M','40000','888665555','5');
INSERT INTO EMPLOYEE VALUES ('123456789','John','B','Smith','09-JAN-65','731 Fondren, Houston, TX','M','30000','333445555','5');
INSERT INTO EMPLOYEE VALUES ('987654321','Jennifer','S','Wallace','20-JUN-50','291 Berry, Bellaire, TX','F','43000','888665555','4');
INSERT INTO EMPLOYEE VALUES ('999887777','Alice','J','Zelaya','19-JAN-68','3321 Castle, Spring, TX','F','25000','987654321','4');
INSERT INTO EMPLOYEE VALUES ('666884444','Ramesh','K','Narayan','15-SEP-62','975 Fire Oak, Humble, TX','M','38000','333445555','5');
INSERT INTO EMPLOYEE VALUES ('453453453','Joyce','A','English','31-JUL-72','5631 Rice, Houston, TX','F','25000','333445555','5');
INSERT INTO EMPLOYEE VALUES ('987987987','Ahmad','V','Jabbar','29-MAR-69','980 Dallas, Houston, TX','M','25000','987654321','4');

  
INSERT INTO DEPARTMENT VALUES ('2','Operations','123456789','01-JAN-05');
INSERT INTO DEPARTMENT VALUES('5','Research','333445555','22-MAY-88');
INSERT INTO DEPARTMENT VALUES('4','Administration','987654321','01-JAN-95');
INSERT INTO DEPARTMENT VALUES('1','Headquarters','888665555','19-JUN-81');

INSERT INTO WORK_ONS VALUES ('123456789','1','32.5');
INSERT INTO WORK_ONS VALUES ('123456789','2','7.5');
INSERT INTO WORK_ONS VALUES ('666884444','3','40');
INSERT INTO WORK_ONS VALUES ('453453453','1','20');
INSERT INTO WORK_ONS VALUES ('453453453','2','20');
INSERT INTO WORK_ONS VALUES ('333445555','2','10');
INSERT INTO WORK_ONS VALUES ('333445555','3','10');
INSERT INTO WORK_ONS VALUES ('333445555','10','10');
INSERT INTO WORK_ONS VALUES ('333445555','20','10');
INSERT INTO WORK_ONS VALUES ('999887777','30','30');
INSERT INTO WORK_ONS VALUES ('999887777','10','10');
INSERT INTO WORK_ONS VALUES ('987987987','10','35');
INSERT INTO WORK_ONS VALUES ('987987987','30','5');
INSERT INTO WORK_ONS VALUES ('987654321','30','20');
INSERT INTO WORK_ONS VALUES ('987654321','20','15');

INSERT INTO DEPENDENT VALUES ('999887777','Alice','F','05-APR-86','Daughter');
INSERT INTO DEPENDENT VALUES ('999887777','Theodore','M','25-OCT-83','Son');
INSERT INTO DEPENDENT VALUES ('999887777','Joy','F','03-MAY-58','Spouse');
INSERT INTO DEPENDENT VALUES ('987654321','Abner','M','28-FEB-48','Spouse');
INSERT INTO DEPENDENT VALUES ('123456789','Michael','M','04-JAN-88','Son');
INSERT INTO DEPENDENT VALUES ('123456789','Alice','F','30-DEC-88','Daughter');
INSERT INTO DEPENDENT VALUES ('123456789','Elizabeth','F','05-MAY-67','Spouse');

-- Set defered constraints effective. 
SET CONSTRAINTS ALL IMMEDIATE;


SET PAUSE OFF
SELECT * FROM EMPLOYEE;
SELECT * FROM  DEPARTMENT;
SELECT * FROM  PROJECT;
SELECT * FROM DEPENDENT;
SELECT * FROM WORK_ONS;
SET PAUSE ON
