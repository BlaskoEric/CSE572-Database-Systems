REM 
REM login.sql is a special file SQLPLUS looks for
REM    when it starts up
REM   if first looks at the directory in which
REM     sqlplus is invoked, if not found
REM     it looks in home directory for ORACLE,
REM     if not found, stops looking.

prompt login.sql loaded. 
REM
REM set sqlprompt "What now, boss? SQL >"
REM
set linesize 132
set pagesize 30
set pause on
set pause "PRESS RETURN TO CONTINUE"
DEFINE_EDITOR=vi
