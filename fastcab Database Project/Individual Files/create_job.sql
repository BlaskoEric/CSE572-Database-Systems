-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_job_noblasko.txt;

-- create table
DROP TABLE Job CASCADE CONSTRAINTS;
CREATE TABLE Job (
	jobID CHAR(5) NOT NULL,
	driverID CHAR(5) NOT NULL,
	licensePlateNo VARCHAR2(9) NOT NULL,
	clientID CHAR(5), -- flags cannot be set 'NOT NULL'
	contractID CHAR(5), -- flags cannot be set 'NOT NULL'
	jobDate DATE NOT NULL,
	jobPrice CHAR(6), -- contracts excluded
	CONSTRAINTS Job_PK PRIMARY KEY (jobID)
);

-- foreign key for Taxi table
ALTER TABLE Job
	ADD CONSTRAINTS PlateNumber_FK FOREIGN KEY(licensePlateNo) REFERENCES Taxi(licensePlateNo)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- foreign key for Drivers table
ALTER TABLE Job
	ADD CONSTRAINTS StaffID_FK FOREIGN KEY(driverID, licensePlateNo) REFERENCES Drivers(staffID, licensePlateNo)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- foreign key for PrivateClient table
ALTER TABLE Job
	ADD CONSTRAINTS ClientID_FK FOREIGN KEY(clientID) REFERENCES PrivateClient(clientID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- foreign key for Contract table
ALTER TABLE Job
	ADD CONSTRAINTS ContractID_FK FOREIGN KEY(contractID) REFERENCES Contract(contractID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

--stop script
spool off;
