-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_allstaff_noblasko.txt;

DROP TABLE AllStaff CASCADE CONSTRAINTS;
CREATE TABLE AllStaff (
    staffID CHAR(5) NOT NULL,
    officeID CHAR(5) NOT NULL,
    fName VARCHAR(15) NOT NULL,
    lName VARCHAR(15) NOT NULL,
    phoneNo NUMBER(10),
    strAddres VARCHAR2(30),
    city VARCHAR2(15),
    zipCode CHAR(5),
    gender CHAR(1),
    DOB DATE NOT NULL,
    salary NUMBER(8,2) NOT NULL,
    mgrFlag CHAR(1),
    adminFlag CHAR(1),
    ownerFlag CHAR(1),
    driverFlag CHAR(1),
    driversLicense VARCHAR2(9),
    CONSTRAINTS AllStaff_PK PRIMARY KEY (staffID),
    CONSTRAINTS AllStaff_Sex_CK CHECK (gender IN ('f','m'))
);

ALTER TABLE AllStaff
    ADD CONSTRAINTS AllStaff_officeID_FK FOREIGN KEY (officeID) REFERENCES Office(officeID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- stop script
spool off;
