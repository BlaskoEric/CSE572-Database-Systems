-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572Project/output_scripts/insert_allstaff_noblasko.txt

SET CONSTRAINTS	ALL DEFERRED;

INSERT INTO AllStaff VALUES('L1001','BR001','Patricia','Ligon','6158320728','2090 Buffalo Creek Road','Glasgow','42141','f','12-JAN-42','55000.00','1','0','0','0','');
INSERT INTO AllStaff VALUES('L1002','BR001','Bryan','Morrissette','9172619577','3505 Massachusetts Avenue','Dry Fork','42147','m','2-NOV-57','35000.00','0','1','0','0','');
INSERT INTO AllStaff VALUES('L1003','BR001','Joshua','Morales','8186877240','476 Glendale Avenue','Glasgow','42141','m','19-JUN-77','40000.00','0','0','1','1','M7500860');
INSERT INTO AllStaff VALUES('L1004','BR001','Cecelia','Kohn','2126703256','1453 Oakwood Avenue','Lamb','42145','f','4-DEC-45','32000.00','0','0','1','1','D4706870');
INSERT INTO AllStaff VALUES('L2001','BR002','Ryan','Santos','9529414210','3870 Sycamore Fork Road','Dry Fork','42147','m','18-NOV-85','65000.00','1','0','0','0','');
INSERT INTO AllStaff VALUES('L2002','BR002','Mary','Unrein','2488513135','1779 Hayhurst Lane','Glasgow','42141','f','21-MAR-80','40000.00','0','1','1','0',''    );
INSERT INTO AllStaff VALUES('L2003','BR002','Janet','Ridley','4132948583','4897 Birch Street','Glasgow','42141','f','4-JUN-94','38000.00','0','0','0','1','D98741657');
INSERT INTO AllStaff VALUES('L2004','BR002','Lena','Williams','3033536971','4870 Sweetwood Drive','Lamb','42145','f','19-OCT-82','33000.00','0','0','1','1','M49796413');
INSERT INTO AllStaff VALUES('L3001','BR003','Ann','Smythe','5032266649','793 Karen Lane','Dry Fork','42147','f','5-AUG-77','60000.00','1','0','1','0','');
INSERT INTO AllStaff VALUES('L3002','BR003','Pamela','Disanto','8304845409','859 Farland Avenue','Glasgow','42141','f','2-DEC-87','29000.00','0','1','0','1','M79999431');
INSERT INTO AllStaff VALUES('L3003','BR003','Evelyn','Turner','2153991945','3364 Wakefield Street','Dry Fork','42147','f','21-FEB-78','25000.00','0','0','0','1','G67901567');
INSERT INTO AllStaff VALUES('L3004','BR003','Douglas','Le','3037801499','648 McKinley Avenue','Glasgow','42141','m','12-MAR-67','33000.00','0','0','0','1','G79511000');

SET CONSTRAINTS	ALL IMMEDIATE;

-- stop	script
spool off;
