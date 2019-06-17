--start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/insert_business_noblasko.txt;

-- defer contraints
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO BusinessClient VALUES (
	'BC001', 'BR001', 'Real Fake Doors', '70 Sea Road', 'Detchant'
);
INSERT INTO BusinessClient VALUES (
	'BC002', 'BR002', 'Planet Express', '81 Whitby Rd', 'Kirkton'
);
INSERT INTO BusinessClient VALUES (
	'BC003', 'BR003', 'Centixo', '3 Coast Rd', 'Kilninian'
);
INSERT INTO BusinessClient VALUES (
	'BC004', 'BR001', 'Semiloo LLC', '81 Wood Lane', 'Bagworth'
);
INSERT INTO BusinessClient VALUES (
	'BC005', 'BR002', 'Diser Company', '68 Castledore Rd', 'Detchant'
);
INSERT INTO BusinessClient VALUES (
	'BC006', 'BR002', 'Esive Corp', '10 Seafield Pl', 'Foston'
);
INSERT INTO BusinessClient VALUES (
	'BC007', 'BR003', 'Micron Systems', '27 Stone St', 'Bagworth'
);
INSERT INTO BusinessClient VALUES (
	'BC008', 'BR001', 'Trivu Engineering', '25 Abbey Row', 'Kilninian'
);
INSERT INTO BusinessClient VALUES (
	'BC009', 'BR002', 'Omninyx Food Supply', '12 Stoic St', 'Foston'
);
INSERT INTO BusinessClient VALUES (
	'BC010', 'BR003', 'Quamb Corp', '48 Asfordby Rd', 'Aldingham'
);

-- Set defered constraints effective. 
SET CONSTRAINTS ALL IMMEDIATE;

-- stop script
spool off;
