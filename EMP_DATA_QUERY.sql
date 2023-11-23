USE PowerBi

-- Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10, 2),
    joindate DATE
);

-- Insert sample data
INSERT INTO employees (id, name, salary, joindate) VALUES
    (1, 'John Doe', 50000.00, '2022-01-01'),
    (2, 'Jane Smith', 60000.50, '2022-02-15'),
    (3, 'Bob Johnson', 55000.75, '2022-03-10'),
    (4, 'Alice Williams', 70000.00, '2022-04-22'),
    (5, 'Charlie Brown', 45000.25, '2022-05-05'),
    (6, 'Eva Davis', 80000.75, '2022-06-30'),
    (7, 'David Wilson', 60000.00, '2022-07-12'),
    (8, 'Grace Miller', 75000.50, '2022-08-18'),
    (9, 'Frank White', 65000.25, '2022-09-25'),
    (10, 'Sophie Turner', 90000.00, '2022-10-05'),
    (11, 'Michael Jackson', 55000.50, '2022-11-15'),
    (12, 'Olivia Davis', 72000.75, '2022-12-20'),
    (13, 'Liam Johnson', 48000.00, '2023-01-02'),
    (14, 'Emma Brown', 85000.25, '2023-02-14'),
    (15, 'Aiden Smith', 62000.50, '2023-03-28');

SELECT * FROM employees;