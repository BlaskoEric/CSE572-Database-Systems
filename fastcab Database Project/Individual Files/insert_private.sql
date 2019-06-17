--start script
spool /home/csusb.edu/005670557/CSE572/CSE572S19/Project/output_scripts/insert_private_noblasko.txt;

-- defer contraints
SET CONSTRAINTS ALL DEFERRED;

INSERT INTO PrivateClient VALUES (
	'CL001', 'BR002', 'Liam', 'Page', 'Male', '34', '76 Pier Road', 'Stanton Lacy'
);
INSERT INTO PrivateClient VALUES (
	'CL002', 'BR001', 'Andrew',  'Coates', 'Male', '58', '84 Holagate Rd', 'Raithby'
);
INSERT INTO PrivateClient VALUES (
	'CL003', 'BR003', 'Oliver',  'Fry', 'Male', '24', '48 Foregate St', 'Codsall Wood'
);
INSERT INTO PrivateClient VALUES (
	'CL004', 'BR001', 'Robert',  'Hall', 'Male', '21', '34 Ploughley Rd', 'Tirdeunaw'
);
INSERT INTO PrivateClient VALUES (
	'CL005', 'BR001', 'Finlay',  'Nelson', 'Male', '45', '16 Consett Rd', 'Hill Dyke'
);
INSERT INTO PrivateClient VALUES (
	'CL006', 'BR002', 'Mohammad', 'Tucker', 'Male', '28', '33 Traill St', 'Rothiebrisbane'
);
INSERT INTO PrivateClient VALUES (
	'CL007', 'BR001', 'Libby', 'Power', 'Female', '25', '75 Wartnaby Rd', 'Acrefair'
);
INSERT INTO PrivateClient VALUES (
	'CL008', 'BR002', 'Nicholas', 'Poole', 'Male', '43', '8 Glenurquhart Road', 'Balgavies'
);
INSERT INTO PrivateClient VALUES (
	'CL009', 'BR003', 'Jack', 'Webb', 'Male', '33', '73 Winchester Rd', 'Methyr Cynog'
);
INSERT INTO PrivateClient VALUES (
	'CL010', 'BR003', 'Louie', 'Kelly', 'Male', '22', '17 Ross Rd', 'Marshbrook'
);
INSERT INTO PrivateClient VALUES (
	'CL011', 'BR001', 'Taylor', 'Shaw', 'Female', '26', '72 Guildry St', 'Gartachoil'
);
INSERT INTO PrivateClient VALUES (
	'CL012', 'BR002', 'Mason', 'Parsons', 'Male', '67', '57 North Promenade', 'Dolgellau'
);
INSERT INTO PrivateClient VALUES (
	'CL013', 'BR002', 'Joseph', 'Powell', 'Male', '25', '85 Stamford Rd', 'Marshbrook'
);
INSERT INTO PrivateClient VALUES (
	'CL014', 'BR003', 'Eloise', 'Franklin', 'Female', '27', '21 Park Ave', 'Hill Dyke'
);
INSERT INTO PrivateClient VALUES (
	'CL015', 'BR001', 'Zak', 'Wong', 'Male', '36', '98 Fordham Rd', 'Rothiebrisbane'
);
INSERT INTO PrivateClient VALUES (
	'CL016', 'BR002', 'Jasmine', 'Brade', 'Female', '31', '55 Broad St', 'Lower Higham'
);
INSERT INTO PrivateClient VALUES (
	'CL017', 'BR002', 'Scarlett', 'Griffiths', 'Female', '42', '16 Nith St', 'Balgavies'
);
INSERT INTO PrivateClient VALUES (
	'CL018', 'BR001', 'Charlie', 'Glover', 'Male', '22', '11 Stamford Rd', 'Gartachoil'
);
INSERT INTO PrivateClient VALUES (
	'CL019', 'BR003', 'Joel', 'Norton', 'Male', '55', '49 Bouverie Rd', 'MarshBrook'
);
INSERT INTO PrivateClient VALUES (
	'CL020', 'BR001', 'Nicole', 'Rowe', 'Female', '21', '7 Stamford Rd', 'Acrefair'
);

-- Set defered constraints effective. 
SET CONSTRAINTS ALL IMMEDIATE;

-- stop script
spool off;
