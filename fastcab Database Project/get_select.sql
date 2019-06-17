
spool select.txt

SET PAUSE OFF 
SET LINESIZE 80  
SET PAGESIZE 55

SELECT * FROM Office;
SELECT * FROM AllStaff;
SELECT * FROM Drivers;
SELECT * FROM Taxi;
SELECT * FROM Client;
SELECT * FROM Contract;
SELECT * FROM Job;

spool off
