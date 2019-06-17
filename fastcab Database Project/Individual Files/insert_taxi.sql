-- start script
spool /home/csusb.edu/005670557/CSE572/CSE572S19/Project/output_scripts/insert_taxi_noblasko.txt

SET CONSTRAINTS	ALL DEFERRED;

INSERT INTO Taxi VALUES('7BFN110','Toyota','prius','2018','white','y','L1002');
INSERT INTO Taxi VALUES('7BVK293','Toyota','corolla','2016','blue','y','L1003');
INSERT INTO Taxi VALUES('7CUB968','Nissan','NV200','2018','yellow','y','L2002');
INSERT INTO Taxi VALUES('6WHB954','Toledo','Seat','2017','white','y','L2004');
INSERT INTO Taxi VALUES('7CVR466','Toyota','prius','2015','white','y','L3001');
INSERT INTO Taxi VALUES('7BUV692','Nissan','NV200','2016','blue','y','L3001');
INSERT INTO Taxi VALUES('6XLB207','Toyota','corolla','2011','black','y','L3001');

SET CONSTRAINTS	ALL IMMEDIATE;

-- stop	script
spool off;
