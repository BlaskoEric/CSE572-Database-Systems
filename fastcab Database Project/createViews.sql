--a) The names and phone numbers of the Managers at each office.
DROP VIEW one;
CREATE VIEW one AS
    SELECT fName,lName,phoneNo,officeID
    FROM AllStaff
    WHERE mgrFlag = 1;

--b) The names of all female drivers based in the Glasgow office. 
DROP VIEW two;
CREATE VIEW two AS
    SELECT fName,lName
    FROM AllStaff
    WHERE gender = 'f';

--c) The total number of staff at each office.
DROP VIEW three;
CREATE VIEW three AS
    SELECT o.officeID, COUNT(s.staffID) AS "TOTAL STAFF"
    FROM Office o, AllStaff s
    WHERE o.officeID = s.officeID
    GROUP BY o.officeID;

--d) The details of all taxis at the Glasgow office.
DROP VIEW four;
CREATE VIEW four AS
    SELECT o.city, t.licensePlateNo, t.make, t.model, t.year, t.color, t.inService, s.staffID
    FROM Taxi t
    JOIN AllStaff s
    ON ownerID = staffID
    JOIN office o
    ON o.officeID = s.officeID
    WHERE o.city = 'Glasgow';

--e) The total number of W registered taxis.
DROP VIEW five;
CREATE VIEW five AS
    SELECT o.officeID, COUNT(t.color) AS "White Taxis"
    FROM Taxi t
    JOIN AllStaff s
    ON s.staffID = t.ownerID
    JOIN Office o
    ON o.officeID = s.officeID
    WHERE t.color = 'white'
    GROUP BY o.officeID;

--f) The number of drivers allocated to each taxi. 
DROP VIEW six;
CREATE VIEW six AS
    SELECT s.lName || ', ' || s.fName AS "NAME", licensePlateNo AS "Taxi"
    FROM Drivers d, AllStaff s
    WHERE d.staffID = s.staffID;

--g) The name and number of owners with more than one taxi.
DROP VIEW seven;
CREATE VIEW seven AS
    SELECT s.lName || ', ' || s.fName AS "NAME", s.phoneNo
    FROM AllStaff s
    WHERE s.staffID IN (SELECT ownerID
                      FROM Taxi
                        GROUP BY ownerID
                      HAVING COUNT(*) > 1);

--h) The full address of all business clients in Glasgow.
DROP VIEW eight;
CREATE VIEW eight AS
    SELECT clientID, businessName, clientAddress, clientCity
    FROM Client
    WHERE businessName IS NOT NULL;

--i) The details of the current contracts with business clients in Glasgow.
DROP VIEW nine;
CREATE VIEW nine AS
    SELECT o.city, c.contractID
    FROM Contract c, Office o
    WHERE c.officeID = o.officeID AND o.city = 'Glasgow';

--j) The total number of private clients in each city.
DROP VIEW ten;
CREATE VIEW ten AS
    SELECT clientCity, COUNT(clientCity) AS "CLIENT COUNT"
    FROM PrivateClient
    GROUP BY clientCity;

--k) The details of jobs undertaken by a driver on a given day. 
DROP VIEW eleven;
CREATE VIEW eleven AS
    SELECT s.lName || ', ' || s.fName AS DRIVER, j.jobID, j.jobDate
    FROM AllStaff s
    JOIN Job j
    ON j.staffID = s.staffID
    WHERE j.jobDate = '12-Apr-19';

--l) The names of drivers who are over 55 years old.
DROP VIEW twelve;
CREATE VIEW twelve AS
    SELECT lName || ', ' || fName AS DRIVER, trunc(months_between(sysdate,DOB)/12) age
    FROM AllStaff
    WHERE trunc(months_between(sysdate,DOB)/12) > 55;

--m) The names and numbers of private clients who hired a taxi in November 2000.
DROP VIEW thirteen;
CREATE VIEW thirteen AS
    SELECT p.fName || ', ' || p.lName as NAME, p.clientID
    FROM Client p 
    JOIN Job j
    ON j.clientID = p.clientID
    WHERE j.JobDate >= '1-Nov-00' AND j.JobDate <= '30-Nov-00';


--n) The names and addresses of private clients who have hired a taxi more than three times.
DROP VIEW fourteen;
CREATE VIEW fourteen AS
    SELECT DISTINCT p.lName || ', ' || p.fName AS "NAME", j.clientID
    FROM PrivateClient p
    JOIN Job j
    ON j.clientID = p.clientID;
    WHERE p.clientID IN (SELECT clientID
                      FROM Job
                        GROUP BY clientID
                      HAVING COUNT(*) > 1);

--o) The average number of miles driven during a job.
DROP VIEW fifteen;
CREATE VIEW fifteen  AS
    SELECT AVG(jobMiles) AS "AVERAGE MILES"
    FROM Job;

--p) The total number of jobs allocated to each car.
DROP VIEW sixteen;
CREATE VIEW sixteen AS
    SELECT licensePlateNo, COUNT(licensePlateNo) as "No of Jobs"
    FROM Job
    GROUP BY licensePlateNo;

--q) The total number of jobs allocated to each driver.
DROP VIEW seventeen;
CREATE VIEW seventeen AS
    SELECT s.lName || ', ' || s.fName AS DRIVER, COUNT(j.staffID) as "No of Jobs"
    FROM Job j, AllStaff s
    WHERE s.staffID = j.staffID
    GROUP BY s.lName || ', ' || s.fName;

--r) The total amount charged for each car in November 2000. ** need to add date **
DROP VIEW eightteen;
CREATE VIEW eightteen AS
    SELECT licensePlateNo, SUM(jobPrice) AS "TOTAL CHARGE"
    FROM Job
    WHERE jobDate >= '1-Nov-00' AND jobDate <= '30-Nov-00'
    GROUP BY licensePlateNo;
    
--s) The total number of jobs and miles driven for a given contract.
DROP VIEW nineteen;
CREATE VIEW nineteen AS
    SELECT COUNT(jobID) AS "TOTAL JOBS", SUM(jobMiles) AS "TOTAL MILES", contractID
    FROM Job
    WHERE contractID IS NOT NULL
    GROUP BY contractID;



SET PAUSE OFF
spool results.txt

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
SELECT * FROM fourteen;
SELECT * FROM fifteen; 
SELECT * FROM sixteen;
SELECT * FROM seventeen;
SELECT * FROM eightteen;
SELECT * FROM nineteen;

spool off






