spool tableDesc.txt

COLUMN table_name FORMAT A20 
COLUMN column_name FORMAT A20 
COLUMN comments FORMAT A40 WRAPPED 
SET LINESIZE 132 
SET PAGESIZE 55                  
-- Query comments of table 
-- This query will show all your project’s tables made in your account. 
SELECT table_name, table_type, comments  
FROM user_tab_comments
WHERE table_name IN ('OFFICE','ALLSTAFF','DRIVERS','TAXI','CLIENT','CONTRACT','JOB' )     
ORDER BY table_name; 

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'OFFICE';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'ALLSTAFF';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'DRIVERS';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'TAXI';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'CLIENT';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'CONTRACT';

 -- Query comments of columns for every <tablename> 
SELECT table_name, column_name, comments    
FROM user_col_comments    
WHERE table_name = 'JOB';

spool off
