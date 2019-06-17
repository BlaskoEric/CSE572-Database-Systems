-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_taxi_noblasko.txt;

DROP TABLE Taxi CASCADE CONSTRAINTS;
CREATE TABLE Taxi (
    licensePlateNo VARCHAR2(9),
    make VARCHAR2(15) NOT NULL,
    model VARCHAR2(8),
    year CHAR(4) NOT NULL,
    color VARCHAR2(10),
    inService CHAR(1),
    ownerID CHAR(5) NOT NULL,
    CONSTRAINTS Taxi_PK PRIMARY KEY (licensePlateNo),
    CONSTRAINTS Taxi_inService_CK CHECK (inService IN ('y','n'))
);

ALTER TABLE Taxi
    ADD CONSTRAINTS Taxi_ownerID_FK FOREIGN KEY (ownerID) REFERENCES AllStaff(staffID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

--stop script
spool off;
