--start script
spool /home/csusb.edu/005670557/CSE572/CSE572S19/Project/output_scripts/insert_contract_noblasko.txt;

-- defer contraints
SET CONSTRAINTS ALL DEFERRED;

-- insert values
INSERT INTO Contract VALUES (
	'CI001', 'BC001', 'BR002', '01-Apr-18', '18-Jul-18', '2500'
);
INSERT INTO Contract VALUES (
	'CI002', 'BC001', 'BR002', '19-Jul-18', '18-Jan-19', '3000'
);
INSERT INTO Contract VALUES (
	'CI003', 'BC003', 'BR001', '01-Sep-12', '01-Mar-13', '4500'
);
INSERT INTO Contract VALUES (
	'CI004', 'BC004', 'BR002', '11-Jul-16', '11-Nov-16', '2100'
);
INSERT INTO Contract VALUES (
	'CI005', 'BC005', 'BR003', '16-Jan-09', '16-Jan-10', '10500'
);
INSERT INTO Contract VALUES (
	'CI006', 'BC006', 'BR003', '16-Jan-09', '16-Jan-10', '10500'
);
INSERT INTO Contract VALUES (
	'CI007', 'BC007', 'BR003', '01-Jun-14', '01-Jun-15', '9000'
);
INSERT INTO Contract VALUES (
	'CI008', 'BC008', 'BR002', '17-Oct-06', '04-Nov-06', '300'
);
INSERT INTO Contract VALUES (
	'CI009', 'BC008', 'BR002', '05-Nov-06', '05-Dec-06', '250'
);
INSERT INTO Contract VALUES (
	'CI010', 'BC009', 'BR002', '12-Aug-19', '31-Dec-19', '5000'
);
INSERT INTO Contract VALUES (
	'CI011', 'BC010', 'BR001', '10-Apr-19', '05-Jun-19', '2550'
);
INSERT INTO Contract VALUES (
	'CI012', 'BC010', 'BR001', '05-Jun-19', '06-Aug-19', '2600'
);

-- Set defered constraints effective. 
SET CONSTRAINTS ALL IMMEDIATE;

-- stop script
spool off;
