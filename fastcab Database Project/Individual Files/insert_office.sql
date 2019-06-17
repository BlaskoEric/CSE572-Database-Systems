-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572S19/Project/output_scripts/insert_office_noblasko.txt

SET CONSTRAINTS ALL DEFERRED;

INSERT INTO Office VALUES ('BR001','L1001','FastCab','123 Main St.','Glasgow','42141','5551235523');
INSERT INTO Office VALUES ('BR002','L2001','FastCab','333 Spruce St.','Dry Fork','42147','5554842231');
INSERT INTO Office VALUES ('BR003','L3001','FastCab','321 Ash St.','Lamb','42145','5554245888');

SET CONSTRAINTS ALL IMMEDIATE;

-- stop script
spool off;
