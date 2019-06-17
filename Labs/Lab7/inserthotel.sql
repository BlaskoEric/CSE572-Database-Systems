
--Defer constraints
SET CONSTRAINTS ALL DEFERRED;

spool inserthotelOutput_Eric.txt

INSERT INTO Hotel VALUES ('H001','Sun Shine','San Bernadino');
INSERT INTO Hotel VALUES ('H002','King Stay','Riverside');
INSERT INTO Hotel VALUES ('H003','Valley Stay','Moreno Valley');

INSERT INTO Room VALUES ('L001','H001','Luxury','200');
INSERT INTO Room VALUES ('D002','H001','Double','150');
INSERT INTO Room VALUES ('L003','H001','Suite','100');
INSERT INTO Room VALUES ('L001','H002','Luxury','200');
INSERT INTO Room VALUES ('D002','H002','Double','150');
INSERT INTO Room VALUES ('L003','H002','Suite','100');
INSERT INTO Room VALUES ('L001','H003','Luxury','200');
INSERT INTO Room VALUES ('D002','H003','Double','150');
INSERT INTO Room VALUES ('L003','H003','Suite','100');

INSERT INTO Guest VALUES ('G001','Larry Whites','124 Main Street, Riverside 92403');
INSERT INTO Guest VALUES ('G002','Eric Blasko','123 Perris Blvd, Moreno Valley 92553');
INSERT INTO Guest VALUES ('G003','Josh Senee','111 University Way, San Bernadino 92403');

INSERT INTO Booking VALUES ('H001','G001','4-Jan-19','8-Jan-19','L001');
INSERT INTO Booking VALUES ('H002','G001','11-Feb-19','15-Feb-19','D002');
INSERT INTO Booking VALUES ('H003','G002','18-Nov-19','20-Nov-19','L003');
INSERT INTO Booking VALUES ('H001','G002','6-Jul-19','8-Jul-19','L001');
INSERT INTO Booking VALUES ('H002','G003','2-Dec-19','7-Dec-19','L001');
INSERT INTO Booking VALUES ('H003','G003','2-Jan-18','8-Jan-18','L002');

SET CONSTRAINTS ALL IMMEDIATE;

--Select output
SET PAUSE OFF
SELECT * FROM Hotel;
SELECT * FROM Room;
SELECT * FROM Guest;
SELECT * FROM Booking;
SET PAUSE ON
spool off






