REM   
REM
REM   This will list important system tables from catalog
REM
REM   Make sure that you have a copy of catalogmask.sql
REM     in the same directory that you are calling catalog
REM
REM   To use this, you must be in sqlplus and issue the
REM   command   start catalog

start catalogmask

REM   The above will set formats right

select * from dict
where table_name in ('USER_TABLES', 'USER_CONSTRAINTS',
    'USER_TAB_PRIVS','USER_TAB_PRIVS_MADE','USER_TAB_PRIVS_RECD',
    'ALL_USERS', 'USER_CATALOG', 'USER_COL_COMMENTS','USER_CONS_COLUMNS',
    'USER_INDEXES','USER_IND_COLUMNS','USER_SYNONYMS',  
    'USER_TAB_COLUMNS','USER_TAB_COMMENTS','USER_USERS',
    'USER_VIEWS','USER_OBJECTS');

