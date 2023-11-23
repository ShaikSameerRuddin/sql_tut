--  to create data base
CREATE DATABASE demo;

-- before creating or doning any sort of query or any other things frist u need to select the data 
USE marketing_data;

-- to create table in that marketing database
CREATE TABLE demo_table(
 ID INT PRIMARY KEY,
 NAME VARCHAR(50),
 GREAD VARCHAR(1)
);

-- to select the tabale and show the results
SELECT *
FROM demo_table;


