--a) The names and phone numbers of the Managers at each office.
SELECT fName,lName,phoneNo
FROM AllStaff
WHERE mgrFlag = 1;

--b) The names of all female drivers based in the Glasgow office. 
SELECT fName,lName
FROM AllStaff
WHERE gender = 'f';

--c) The total number of staff at each office.
SELECT o.officeID, COUNT(s.staffID)
FROM Office o, AllStaff s
WHERE o.officeID = s.officeID
GROUP BY o.officeID;

--d) The details of all taxis at the Glasgow office.
SELECT o.city, t.licensePlateNo, t.make, t.model, t.year, t.color, t.inService, s.staffID
FROM Taxi t
JOIN AllStaff s
ON ownerID = staffID
JOIN office o
ON o.officeID = s.officeID
WHERE o.city = 'Glasgow';

--e) The total number of W registered taxis.
SELECT o.officeID, COUNT(t.color) AS "White Taxis"
FROM Taxi t
JOIN AllStaff s
ON s.staffID = t.ownerID
JOIN Office o
ON o.officeID = s.officeID
WHERE t.color = 'white'
GROUP BY o.officeID;

--f) The number of drivers allocated to each taxi. 
SELECT s.lName || ', ' || s.fName AS "NAME", licensePlateNo AS "Taxi"
FROM Drivers d, AllStaff s
WHERE d.staffID = s.staffID;

--g) The name and number of owners with more than one taxi. **needs work**
SELECT s.lName || ', ' || s.fName AS "NAME", s.phoneNo
FROM AllStaff s
WHERE (SELECT COUNT(ownerID) 
                   FROM Taxi) > 1;

--h) The full address of all business clients in Glasgow.
SELECT clientID, businessName, businessAddress, businessCity
FROM BusinessClient;

--i) The details of the current contracts with business clients in Glasgow.
SELECT o.city, c.contractID
FROM Contract c, Office o
WHERE c.officeID = o.officeID AND o.city = 'Glasgow';

--j) The total number of private clients in each city.
SELECT clientCity, COUNT(clientCity)
FROM PrivateClient
GROUP BY clientCity;

--k) The details of jobs undertaken by a driver on a given day. ** needs work **
SELECT d.lName || ', ' || d.fName AS DRIVER, j.jobNo
FROM Driver d, Job j
WHERE d.staffNo = j.staffNo AND &conditions;

Condidtions: staffNo,

--l) The names of drivers who are over 55 years old. ** need to modify some ages **
SELECT lName || ', ' || fName AS DRIVER, trunc(months_between(sysdate,DOB)/12) age
FROM AllStaff
WHERE trunc(months_between(sysdate,DOB)/12) > 55;

--m) The names and numbers of private clients who hired a taxi in November 2000. ** needs work **
SELECT p.fName || ', ' || p.lName as NAME, p.clientID
FROM PrivateClient p
JOIN Job j
ON p.clientID = j.clientID
WHERE j.jobDate < TO_DATE('1-NOV-00','DD-MON-RR') AND j.jobDate < TO_DATE('30-NOV-00','DD-MON-RR');


--n) The names and addresses of private clients who have hired a taxi more than three times.

--o) The average number of miles driven during a job.

--p) The total number of jobs allocated to each car.
SELECT licensePlateNo, COUNT(licensePlateNo) as "No of Jobs"
FROM Job
GROUP BY licensePlateNo;

--q) The total number of jobs allocated to each driver.
SELECT s.lName || ', ' || s.fName AS DRIVER, COUNT(j.driverID) as "No of Jobs"
FROM Job j, AllStaff s
WHERE s.staffID = j.driverID
GROUP BY s.lName || ', ' || s.fName;

--r) The total amount charged for each car in November 2000. ** need to add date **
SELECT licensePlateNo, SUM(jobPrice)
FROM Job
GROUP BY licensePlateNo;

--s) The total number of jobs and miles driven for a given contract.


