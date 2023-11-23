USE SQL_TUT;

CREATE TABLE employees_Data(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(30) NOT NULL,
  emp_salary DECIMAL(15,3) NOT NULL,
  emp_dept_id INT NOT NULL,
  emp_sex VARCHAR(10) DEFAULT 'OTHERS' NOT NULL CHECK (emp_sex IN('MALE', 'FEMALE', 'OTHERS'))
);

--Create table with check 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'departments_Data')
BEGIN
    CREATE TABLE departments (
        dept_id INT PRIMARY KEY,
        dept_name VARCHAR(50) NOT NULL,
        dept_head VARCHAR(50) NOT NULL,
    );
END;

--Change table name 
EXEC sp_rename 'departments', 'departments_Data';

EXEC sp_rename 'departments_Dat', 'departments_Data';

ALTER TABLE departments_Data
ADD dept_strength INT;

ALTER TABLE employees_Data
ADD CONSTRAINT FK_EmployeeDepartment FOREIGN KEY (emp_dept_id) REFERENCES departments_Data(dept_id);


INSERT INTO departments_Data (dept_id, dept_name, dept_head)
VALUES
(1, 'Marketing', 'Marketing Head Name'),
(2, 'Sales', 'Sales Head Name'),
(3, 'Finance', 'Finance Head Name');


INSERT INTO departments_Data (dept_id, dept_name, dept_head)
VALUES
(4, 'Human Resources', 'HR Head Name'),
(5, 'Operations', 'Operations Head Name'),
(6, 'IT', 'IT Head Name');

INSERT INTO departments_Data (dept_id, dept_name, dept_head)
VALUES
(7, 'Customer Service', 'Customer Service Head Name'),
(8, 'Research and Development', 'R&D Head Name'),
(9, 'Supply Chain', 'Supply Chain Head Name');

ALTER TABLE departments_Data
ADD CONSTRAINT UniqueDeptName UNIQUE (dept_name);

INSERT INTO departments_Data (dept_id, dept_name, dept_head)
VALUES
(10, 'Customer Service', 'Customer Service Head Name');


SELECT * FROM departments_Data;



INSERT INTO employees_Data (emp_id, emp_name, emp_salary, emp_dept_id, emp_sex)
VALUES
(1, 'John Doe', 50000.00, 1, 'MALE'),
(2, 'Jane Smith', 60000.00, 1, 'FEMALE'),
(3, 'Alice Johnson', 55000.00, 2, 'FEMALE'),
(4, 'Bob Williams', 52000.00, 2, 'MALE'),
(5, 'Emily Brown', 48000.00, 3, 'FEMALE'),
(6, 'Michael Davis', 53000.00, 3, 'MALE'),
(7, 'Olivia Wilson', 51000.00, 1, 'FEMALE'),
(8, 'William Miller', 54000.00, 2, 'MALE'),
(9, 'Sophia Garcia', 49000.00, 3, 'FEMALE'),
(10, 'Daniel Martinez', 57000.00, 1, 'MALE');

INSERT INTO employees_Data
VALUES
(11, 'Sarah Johnson', 52000.00, 5, 'FEMALE'),
(12, 'Tom Anderson', 48000.00, 4, 'MALE'),
(13, 'Linda Garcia', 54000.00, 6, 'FEMALE'),
(14, 'Chris Wilson', 49000.00, 6, 'MALE'),
(15, 'Rachel Martinez', 55000.00, 8, 'FEMALE');



UPDATE departments_Data
SET dept_strength = (
    SELECT COUNT(emp_id)
    FROM employees_Data
    WHERE employees_Data.emp_dept_id = departments_Data.dept_id
);