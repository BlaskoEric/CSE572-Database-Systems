REM    FILE:  catalogmask.sql
REM    DESCRIPTION -- contains formatting commands to list 
REM        dictionary
REM    this file will be used in catalog.sql

set linesize 132
set pagesize 60


column search_condition format a30 word_wrapped
column constraint_name format a12 word_wrapped
column table_name format a20 word_wrapped
column r_owner format a10 word_wrapped
column r_constraint_name format a12 word_wrapped
column comments format a50 word_wrapped
