CREATE DATABASE COLLEGE;

-- if not exist-- 
CREATE DATABASE IF NOT EXISTS COLLEGE;

DROP DATABASE IF EXISTS nodatabase;	

USE COLLEGE;


CREATE TABLE student (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL 
);


INSERT INTO student VALUES(1,'SAMEER RUDDIN', 25);
INSERT INTO student VALUES(2,'TABASUM', 25);

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;

CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student
(rollno , name) 
VALUES
(1,"SAMEER"),
(2,"RUDDIN"),
(3,"SHAIK");

INSERT INTO student VALUES (4,"RAMULU");







