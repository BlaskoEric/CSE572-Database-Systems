--start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_private_noblasko.txt

-- create table
DROP TABLE PrivateClient CASCADE CONSTRAINTS;
CREATE TABLE PrivateClient (
	clientID CHAR(5) NOT NULL,
	officeID CHAR(5) NOT NULL,
	fName VARCHAR(15) NOT NULL,
	lName VARCHAR(15) NOT NULL,
	clientGender CHAR(7) DEFAULT 'none',
	clientAge CHAR(3),
	clientAddress VARCHAR(30) NOT NULL,
	clientCity VARCHAR(15) DEFAULT 'South Park',
	CONSTRAINTS Private_PK PRIMARY KEY (clientID)
);

-- modify table foreign keys
ALTER TABLE PrivateClient
	ADD CONSTRAINTS Private_FK FOREIGN KEY(officeID) REFERENCES Office(officeID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- stop script
spool off;
