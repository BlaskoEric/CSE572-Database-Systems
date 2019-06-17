--start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_contract_noblasko.txt;

-- create table
DROP TABLE Contract CASCADE CONSTRAINTS;
CREATE TABLE Contract (
	contractID CHAR(5) NOT NULL,
	clientID CHAR(5) NOT NULL,
	officeID CHAR(5) NOT NULL,
	startDate DATE NOT NULL,
	endDate DATE NOT NULL,
	contractPrice CHAR(6) NOT NULL,
	CONSTRAINTS Contract_PK PRIMARY KEY (contractID)
);

-- modify table foreign keys
ALTER TABLE Contract
	ADD CONSTRAINTS BusinessClient_FK FOREIGN KEY(clientID) REFERENCES BusinessClient(clientID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE Contract
	ADD CONSTRAINTS OfficeContract_FK FOREIGN KEY(officeID) REFERENCES Office(officeID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- stop script
spool off;
