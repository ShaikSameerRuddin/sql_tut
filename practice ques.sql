CREATE DATABASE srtech;

CREATE TABLE employee(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 salary INT8 NOT NULL
);

INSERT INTO employee
(id, name, salary)
VALUES
(1,"ADAM",25000),
(2,"BOB", 30000),
(3, "CASEY", 40000);

SELECT * FROM employee;