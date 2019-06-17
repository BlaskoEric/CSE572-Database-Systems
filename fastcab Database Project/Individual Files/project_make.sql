-- makefile to run scripts in order

-- create tables
@create_office.sql;
@create_private.sql;
@create_business.sql;
@create_contract.sql;
@create_drivers.sql;
@create_job.sql;
@create_allstaff.sql;
@create_taxi.sql;

-- insert values
@insert_office.sql;
@insert_private.sql;
@insert_business.sql;
@insert_contract.sql;
@insert_job.sql;
@insert_allstaff.sql;
@insert_driver.sql;
@insert_taxi.sql;

-- create comments
@comment_private.sql;
@comment_business.sql;
@comment_contract.sql;
@comment_job.sql;

-- create views

-- run queries

