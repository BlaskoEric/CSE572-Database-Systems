--start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_business_noblasko.txt

-- create table
DROP TABLE BusinessClient CASCADE CONSTRAINTS;
CREATE TABLE BusinessClient (
	clientID CHAR(5) NOT NULL,
	officeID CHAR(5) NOT NULL,
	businessName VARCHAR(20) NOT NULL,
	businessAddress VARCHAR(30) NOT NULL,
	businessCity VARCHAR(15) NOT NULL,
	CONSTRAINTS Business_PK PRIMARY KEY (clientID)
);

-- modify table foreign keys
ALTER TABLE BusinessClient
	ADD CONSTRAINTS Business_FK FOREIGN KEY(officeID) REFERENCES Office(officeID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- stop script
spool off;
