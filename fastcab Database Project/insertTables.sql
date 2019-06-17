SET CONSTRAINTS	ALL DEFERRED;

INSERT INTO AllStaff VALUES (
	'L1001','BR001','Patricia','Ligon','6158320728','2090 Buffalo Creek Road','Glasgow','42141','f','12-JAN-42','55000.00','1','0','0','0',''
);
INSERT INTO AllStaff VALUES (
	'L1002','BR001','Bryan','Morrissette','9172619577','3505 Massachusetts Avenue','Dry Fork','42147','m','2-NOV-57','35000.00','0','1','0','0',''
);
INSERT INTO AllStaff VALUES (
	'L1003','BR001','Joshua','Morales','8186877240','476 Glendale Avenue','Glasgow','42141','m','19-JUN-77','40000.00','0','0','1','1','M7500860'
);
INSERT INTO AllStaff VALUES (
	'L1004','BR001','Cecelia','Kohn','2126703256','1453 Oakwood Avenue','Lamb','42145','f','4-DEC-45','32000.00','0','0','1','1','D4706870'
);
INSERT INTO AllStaff VALUES (
	'L2001','BR002','Ryan','Santos','9529414210','3870 Sycamore Fork Road','Dry Fork','42147','m','18-NOV-85','65000.00','1','0','0','0',''
);
INSERT INTO AllStaff VALUES (
	'L2002','BR002','Mary','Unrein','2488513135','1779 Hayhurst Lane','Glasgow','42141','f','21-MAR-80','40000.00','0','1','1','0',''
);
INSERT INTO AllStaff VALUES (
	'L2003','BR002','Janet','Ridley','4132948583','4897 Birch Street','Glasgow','42141','f','4-JUN-94','38000.00','0','0','0','1','D98741657'
);
INSERT INTO AllStaff VALUES (
	'L2004','BR002','Lena','Williams','3033536971','4870 Sweetwood Drive','Lamb','42145','f','19-OCT-63','33000.00','0','0','1','1','M49796413'
);
INSERT INTO AllStaff VALUES (
	'L3001','BR003','Ann','Smythe','5032266649','793 Karen Lane','Dry Fork','42147','f','5-AUG-77','60000.00','1','0','1','0',''
);
INSERT INTO AllStaff VALUES (
	'L3002','BR003','Pamela','Disanto','8304845409','859 Farland Avenue','Glasgow','42141','f','2-DEC-87','29000.00','0','1','0','1','M79999431'
);
INSERT INTO AllStaff VALUES (
	'L3003','BR003','Evelyn','Turner','2153991945','3364 Wakefield Street','Dry Fork','42147','f','21-FEB-78','25000.00','0','0','0','1','G67901567'
);
INSERT INTO AllStaff VALUES (
	'L3004','BR003','Douglas','Le','3037801499','648 McKinley Avenue','Glasgow','42141','m','12-MAR-67','33000.00','0','0','0','1','G79511000'
);

INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL001', 'BR002', 'Liam', 'Page', 'M', '30-Dec-88', '76 Pier Road', 'Dry Fork'
);
INSERT INTO Client(clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
 VALUES (
	'CL002', 'BR001', 'Andrew',  'Coates', 'M', '26-Nov-58', '84 Holagate Rd', 'Raithby'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL003', 'BR003', 'Oliver',  'Fry', 'M', '21-Dec-90', '48 Foregate St', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL004', 'BR001', 'Robert',  'Hall', 'M', '10-Jul-91', '34 Ploughley Rd', 'Tirdeunaw'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL005', 'BR001', 'Finlay',  'Nelson', 'M', '25-Jul-91', '16 Consett Rd', 'Lamb'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL006', 'BR002', 'Mohammad', 'Tucker', 'M', '17-Nov-92', '33 Traill St', 'Rothiebrisbane'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL007', 'BR001', 'Libby', 'Power', 'F', '31-Jan-93', '75 Wartnaby Rd', 'Acrefair'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL008', 'BR002', 'Nicholas', 'Poole', 'M', '5-Jun-93', '8 Glenurquhart Road', 'Dry Fork'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL009', 'BR003', 'Jack', 'Webb', 'M', '26-Dec-94', '73 Winchester Rd', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL010', 'BR003', 'Louie', 'Kelly', 'M', '12-Jun-95', '17 Ross Rd', 'Marshbrook'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL011', 'BR001', 'Taylor', 'Shaw', 'F', '4-Aug-95', '72 Guildry St', 'Lamb'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL012', 'BR002', 'Mason', 'Parsons', 'M', '20-Aug-95', '57 North Promenade', 'Dolgellau'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL013', 'BR002', 'Joseph', 'Powell', 'M', '4-Jul-96', '85 Stamford Rd', 'Marshbrook'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL014', 'BR003', 'Eloise', 'Franklin', 'F', '14-Feb-97', '21 Park Ave', 'Lamb'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL015', 'BR001', 'Zak', 'Wong', 'M', '8-Nov-97', '98 Fordham Rd', 'Rothiebrisbane'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL016', 'BR002', 'Jasmine', 'Brade', 'F', '17-Jun-98', '55 Broad St', 'Lower Higham'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL017', 'BR002', 'Scarlett', 'Griffiths', 'F', '16-Jan-99', '16 Nith St', 'Balgavies'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL018', 'BR001', 'Charlie', 'Glover', 'M', '23-Jul-91', '11 Stamford Rd', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL019', 'BR003', 'Joel', 'Norton', 'M', '10-Nov-92', '49 Bouverie Rd', 'MarshBrook'
);
INSERT INTO Client (clientID, officeID, fName, lName, clientGender, clientDOB, clientAddress, clientCity)
VALUES (
	'CL020', 'BR001', 'Nicole', 'Rowe', 'F', '16-Jan-01', '7 Stamford Rd', 'Dry Fork'
);

-- insert business clients

INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL021', 'BR001', 'Real Fake Doors', '70 Sea Road', 'Detchant'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL022', 'BR002', 'Planet Express', '81 Whitby Rd', 'Dry Fork'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL023', 'BR003', 'Centixo', '3 Coast Rd', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL024', 'BR001', 'Semiloo LLC', '81 Wood Lane', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL025', 'BR002', 'Diser Company', '68 Castledore Rd', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL026', 'BR002', 'Esive Corp', '10 Seafield Pl', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL027', 'BR003', 'Micron Systems', '27 Stone St', 'Dry Fork'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL028', 'BR001', 'Trivu Engineering', '25 Abbey Row', 'Glasgow'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL029', 'BR002', 'Omninyx Food Supply', '12 Stoic St', 'Lamb'
);
INSERT INTO Client (clientID, officeID, businessName, clientAddress, clientCity)
VALUES (
	'CL030', 'BR003', 'Quamb Corp', '48 Asfordby Rd', 'Aldingham'
);



INSERT INTO Contract VALUES (
	'CI001', 'CL001', 'BR002', '01-Apr-18', '18-Jul-18', '2500'
);
INSERT INTO Contract VALUES (
	'CI002', 'CL001', 'BR002', '19-Jul-18', '18-Jan-19', '3000'
);
INSERT INTO Contract VALUES (
	'CI003', 'CL003', 'BR001', '01-Sep-12', '01-Mar-13', '4500'
);
INSERT INTO Contract VALUES (
	'CI004', 'CL004', 'BR002', '11-Jul-16', '11-Nov-16', '2100'
);
INSERT INTO Contract VALUES (
	'CI005', 'CL005', 'BR003', '16-Jan-09', '16-Jan-10', '10500'
);
INSERT INTO Contract VALUES (
	'CI006', 'CL006', 'BR003', '16-Jan-09', '16-Jan-10', '10500'
);
INSERT INTO Contract VALUES (
	'CI007', 'CL007', 'BR003', '01-Jun-14', '01-Jun-15', '9000'
);
INSERT INTO Contract VALUES (
	'CI008', 'CL008', 'BR002', '17-Oct-06', '04-Nov-06', '300'
);
INSERT INTO Contract VALUES (
	'CI009', 'CL008', 'BR002', '05-Nov-06', '05-Dec-06', '250'
);
INSERT INTO Contract VALUES (
	'CI010', 'CL009', 'BR002', '12-Aug-19', '31-Dec-19', '5000'
);
INSERT INTO Contract VALUES (
	'CI011', 'CL010', 'BR001', '10-Apr-19', '05-Jun-19', '2550'
);
INSERT INTO Contract VALUES (
	'CI012', 'CL010', 'BR001', '05-Jun-19', '06-Aug-19', '2600'
);


INSERT INTO Drivers VALUES('L1003','7BFN110');
INSERT INTO Drivers VALUES('L1004','7BVK293');
INSERT INTO Drivers VALUES('L2003','7CUB968');
INSERT INTO Drivers VALUES('L2004','6WHB954');
INSERT INTO Drivers VALUES('L3002','7CVR466');
INSERT INTO Drivers VALUES('L3003','7BUV692');
INSERT INTO Drivers VALUES('L3004','6XLB207');

INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB001', 'L2004', '6WHB954', 'CL001', '01-Apr-10', '10', '5'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB002', 'L3003', '7CUB968', 'CL002', '04-Aug-11', '25', '12'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB003', 'L2004', '7BVK293', 'CL003', '05-Sep-16', '21', '11'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB004', 'L1003', '7BFN110', 'CL004', '26-Sep-19', '21', '11'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB005', 'L3004', '7BVK293', 'CL005', '12-Mar-12', '55', '28'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB007', 'L3002', '7BUV692', 'CL007', '01-Oct-18', '76', '38'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB008', 'L3002', '7BUV692', 'CL007', '11-Sep-12', '12', '6'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB009', 'L3003', '6WHB954', 'CL008', '23-Mar-11', '11', '6'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB010', 'L3002', '7BUV692', 'CL009', '16-Apr-18', '2', '1'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB011', 'L1004', '6WHB954', 'CL010', '15-Aug-19', '100', '50'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB012', 'L3002', '7BUV692', 'CL011', '05-Sep-16', '90', '45'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB013', 'L3003', '7BUV692', 'CL012', '02-Jan-94', '32', '16'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB014', 'L3003', '6WHB954', 'CL012', '17-Nov-00', '99', '50'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles) 
VALUES (
	'JB015', 'L3002', '7BUV692', 'CL013', '10-Jul-12', '19', '9'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB016', 'L1004', '7BUV692', 'CL013', '15-Aug-19', '100', '50'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB017', 'L1004', '7CVR466', 'CL014', '05-Nov-00', '90', '45'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB018', 'L3002', '7BUV692', 'CL015', '02-Dec-12', '31', '15'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB019', 'L3002', '7BVK293', 'CL016', '11-Aug-17', '89', '45'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB020', 'L1004', '7BVK293', 'CL017', '25-Dec-15', '59', '29'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB021', 'L1004', '6WHB954', 'CL018', '12-Aug-19', '31', '15'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB022', 'L3002', '7CVR466', 'CL019', '29-May-19', '91', '46'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB023', 'L2004', '7CVR466', 'CL020', '31-May-19', '12', '6'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB024', 'L1004', '6XLB207', 'CL020', '31-May-19', '12', '6'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB025', 'L3002', '7BUV692', 'CL007', '11-Sep-12', '24', '12'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB026', 'L3002', '6WHB954', 'CL014', '05-Nov-16', '80', '40'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, jobDate, jobPrice, jobMiles)
VALUES (
	'JB027', 'L1004', '7BUV692', 'CL014', '05-Nov-17', '80', '40'
);

-- 12 business contracts => #jobs >= 12

-- insert all contracted jobs
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB028', 'L1003', '6XLB207', 'CL021', 'CI001', '01-Apr-18', '6'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB029', 'L3002', '7BVK293', 'CL022', 'CI001', '21-Jul-18', '23'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB030', 'L2003', '7BUV692', 'CL023', 'CI002', '03-Nov-13', '12'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB031', 'L1003', '7BVK293', 'CL023', 'CI002', '01-Sep-12', '18'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB032', 'L1004', '6XLB207', 'CL023', 'CI002', '11-Jul-16', '2'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB033', 'L1003', '7BVK293', 'CL024', 'CI003', '15-Jun-16', '2'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB034', 'L3002', '7BFN110', 'CL024', 'CI004', '15-Jun-16', '90'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB035', 'L1003', '7BUV692', 'CL025', 'CI005', '21-Jan-09', '17'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB036', 'L1004', '6XLB207', 'CL025', 'CI006', '16-Mar-09', '4'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB037', 'L3002', '7BUV692', 'CL025', 'CI007', '30-Jan-09', '1'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB038', 'L1004', '6WHB954', 'CL026', 'CI008', '17-Oct-06', '54'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB039', 'L1003', '7BFN110', 'CL027', 'CI009', '05-Nov-06', '11'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB040', 'L2003', '7BUV692', 'CL028', 'CI010', '12-Aug-19', '13'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB041', 'L2003', '6WHB954', 'CL029', 'CI010', '31-Dec-19', '10'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB042', 'L1003', '6WHB954', 'CL029', 'CI011', '12-Apr-19', '10'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB043', 'L1004', '7BVK293', 'CL030', 'CI012', '10-Jun-19', '16'
);
INSERT INTO Job (jobID, staffID, licensePlateNo, clientID, contractID, jobDate, jobMiles)
VALUES (
	'JB044', 'L1003', '7BFN110', 'CL030', 'CI012', '05-Sep-19', '100'
);

INSERT INTO Office VALUES ('BR001','L1001','FastCab','123 Main St.','Glasgow','42141','5551235523');
INSERT INTO Office VALUES ('BR002','L2001','FastCab','333 Spruce St.','Dry Fork','42147','5554842231');
INSERT INTO Office VALUES ('BR003','L3001','FastCab','321 Ash St.','Lamb','42145','5554245888');

INSERT INTO Taxi VALUES('7BFN110','Toyota','prius','2018','white','y','L1002');
INSERT INTO Taxi VALUES('7BVK293','Toyota','corolla','2016','blue','y','L1003');
INSERT INTO Taxi VALUES('7CUB968','Nissan','NV200','2018','yellow','y','L2002');
INSERT INTO Taxi VALUES('6WHB954','Toledo','Seat','2017','white','y','L2004');
INSERT INTO Taxi VALUES('7CVR466','Toyota','prius','2015','white','y','L3001');
INSERT INTO Taxi VALUES('7BUV692','Nissan','NV200','2016','blue','y','L3001');
INSERT INTO Taxi VALUES('6XLB207','Toyota','corolla','2011','black','y','L3001');



SET CONSTRAINTS  ALL IMMEDIATE;

