
-- comment on table
COMMENT ON TABLE Office IS 'table for storing office information';

-- comment on coulumn
COMMENT ON COLUMN Office.officeID IS 'Unique id for each office';
COMMENT ON COLUMN Office.mgrStaffNo IS 'Manager at the given office';
COMMENT ON COLUMN Office.name IS 'Name of the office';
COMMENT ON COLUMN Office.strAddress IS 'Street address of the office';
COMMENT ON COLUMN Office.city IS 'City of the office';
COMMENT ON COLUMN Office.zipCode IS 'zip code of the office';
COMMENT ON COLUMN Office.phoneNo IS 'phone number for the office';

-- comment on table
COMMENT ON TABLE AllStaff IS 'table for storing info on all staff';

-- comment on coulumn
COMMENT ON COLUMN AllStaff.staffID IS 'Unique identifier for each staff';
COMMENT ON COLUMN AllStaff.officeID IS 'Foreign key to reference office table';
COMMENT ON COLUMN AllStaff.fName IS 'First name of employee';
COMMENT ON COLUMN AllStaff.lName IS 'Last name of employee';
COMMENT ON COLUMN AllStaff.phoneNo IS 'Phone number of employee';
COMMENT ON COLUMN AllStaff.strAddres IS 'Street address of employee';
COMMENT ON COLUMN AllStaff.city IS 'City of employee';
COMMENT ON COLUMN AllStaff.zipCode IS 'Zip code of employee';
COMMENT ON COLUMN AllStaff.gender IS 'Gender of employee';
COMMENT ON COLUMN AllStaff.DOB IS 'Date of Birth of employee';
COMMENT ON COLUMN AllStaff.salary IS 'Salary of employee';
COMMENT ON COLUMN AllStaff.mgrFlag IS 'Determines is employee is a manager';
COMMENT ON COLUMN AllStaff.adminFlag IS 'Determines is employee is a admin';
COMMENT ON COLUMN AllStaff.ownerFlag IS 'Determines is employee is a owner of a taxi';
COMMENT ON COLUMN AllStaff.driverFlag IS 'Determines is employee is a driver';
COMMENT ON COLUMN AllStaff.driversLicense IS 'Drivers license for driver employees';


-- comment on table
COMMENT ON TABLE Drivers IS 'table for storing driver info';
COMMENT ON COLUMN Drivers.staffID IS 'FK for drivers staff id';
COMMENT ON COLUMN Drivers.licensePlateNo IS 'Vehicle assigned to driver';
-- comment on coulumn


-- comment on table
COMMENT ON TABLE Taxi IS 'table for storing driver info';

-- comment on coulumn
COMMENT ON COLUMN Taxi.licensePlateNo IS 'License plate number of the taxi';
COMMENT ON COLUMN Taxi.make IS 'Vehicle make';
COMMENT ON COLUMN Taxi.model IS 'Vehicle model';
COMMENT ON COLUMN Taxi.year IS 'Vehicle year';
COMMENT ON COLUMN Taxi.color IS 'Color of vehicle';
COMMENT ON COLUMN Taxi.inService IS 'If taxi is in service';
COMMENT ON COLUMN Taxi.ownerID IS 'Staff ID of the employee who owns the taxi';


-- comment on table
COMMENT ON TABLE Client IS 'table to contain info for clients';

-- comment on columns
COMMENT ON COLUMN Client.clientID IS 'private key to uniquely identify a client';
COMMENT ON COLUMN Client.officeID IS 'foreign key to relate to Office table';
COMMENT ON COLUMN Client.fName IS 'client first name';
COMMENT ON COLUMN Client.lName IS 'client last name';
COMMENT ON COLUMN Client.clientGender IS 'client gender';
COMMENT ON COLUMN Client.clientAddress IS 'client street address';
COMMENT ON COLUMN Client.clientDOB IS 'client age. This should have been DOB, may need to be updated later';
COMMENT ON COLUMN Client.clientCity IS 'city client lives in';
COMMENT ON COLUMN Client.businessName IS 'name of business clients';

-- comment on table
COMMENT ON TABLE Contract IS 'table to contain info for business contracts';

-- comment on columns
COMMENT ON COLUMN Contract.contractID IS 'primary key for the table, uniquely identifies contracts';
COMMENT ON COLUMN Contract.clientID IS 'foreign key to BusinessClient table';
COMMENT ON COLUMN Contract.officeID IS 'foreign key to Office table';
COMMENT ON COLUMN Contract.startDate IS 'date the contract is effective';
COMMENT ON COLUMN Contract.endDate IS 'date the contract expires';
COMMENT ON COLUMN Contract.contractPrice IS 'price of the contract';

-- comment on table
COMMENT ON TABLE Job IS 'table for storing info on private and business client jobs';

-- comment on coulumn
COMMENT ON COLUMN Job.jobID IS 'primary key for the table';
COMMENT ON COLUMN Job.contractID IS 'foreign key to reference BusinessClient table';
COMMENT ON COLUMN Job.staffID IS 'foreign key used with licensePlateNo to reference Drivers table';
COMMENT ON COLUMN Job.licensePlateNo IS 'foreign key used to reference Taxi table';
COMMENT ON COLUMN Job.jobPrice IS 'used for private clients outside a contract';
COMMENT ON COLUMN Job.jobDate IS 'date when the job was done, applies to both private and business clients';


