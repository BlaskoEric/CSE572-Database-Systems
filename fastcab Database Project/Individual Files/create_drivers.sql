-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/create_drivers_noblasko.txt

DROP TABLE Drivers CASCADE CONSTRAINTS;
CREATE TABLE Drivers (
    staffID CHAR(5) NOT NULL,
    licensePlateNo VARCHAR2(9) NOT NULL,
    CONSTRAINTS Driver_PK PRIMARY KEY (staffID,licensePlateNo)
);

ALTER TABLE Drivers
    ADD CONSTRAINTS Driver_staffID_FK FOREIGN KEY (staffID) REFERENCES AllStaff(staffID)
ON DELETE SET NULL DEFERRABLE INITIALLY IMMEDIATE;

-- stop script
spool off;
