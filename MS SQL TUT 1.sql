CREATE DATABASE SQL_TUT;

USE SQL_TUT;

-- SQL DATA TYPES
/*
1. Numeric -- INT, DECIMAL, NUMERICAL, SMALLINT, BIGINT.
2. Character -- CHAR, VARCHAR, NCHAR, NVARCHAR.
3. Temporal -- DATE, TIME, DATETIME, SMALLDATETIME.
4. Miscellaneous --  its  only in ms sql, ex: BIT, SQL_VARIANT, XML, TABLE BINARY DATA TYPES.
*/

-- INTEGRITY CONSTRANTS - RULES
/*
- A set of rules
- Used to maintian the quailty of information,
- ensure that the data insertion, updating, and other process have to be performed in such a way that data integrity is not affected

ex: UNIQUE, NOT NULL, PRIMARY KEY, FOREIGN KEY, DEFAULT, CHECK.

*/

-- DDL (DATA DEFINTION LANGUAGE)
/*
- Used to create, modify the objects structure eg:(database, tables, views, triggers,)

ex: CREATE, ALTER, DROP, TRUNCATE, RENAME

*/

-- DML (DATA MANUPLATION LANGUAGE)
/*
- Used to insert the data, modify the existing data, removing and retriveting data, from the tables

ex: INSERT, UPDATE, DELETE, SELECT.
*/

-- TCL (transaction control LANGUAGE)
/*
- Used to save data, undo/redo transactions perfromed on the database

ex: COMMIT ROOLBACK SAVE TRANCTION
*/

-- DCL (DATA control LANGUAGE)
/*
- Used TO create roles, permissions, referential integrity and as well it is used to control access to databaseby securing it.

ex: GRANT, REVOKE
*/


USE DEMO;

SELECT *
FROM dbo.Powerbi_Data;