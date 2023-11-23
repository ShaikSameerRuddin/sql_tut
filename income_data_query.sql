USE PowerBi;

-- Create a table
CREATE TABLE income_data (
    country_name VARCHAR(255),
    state_name VARCHAR(255),
    income DECIMAL(10, 2),
    date DATE
);

-- Insert dummy data
INSERT INTO income_data (country_name, state_name, income, date)
VALUES
    ('USA', 'New York', 50000.00, '2023-01-01'),
    ('USA', 'California', 60000.00, '2023-01-02'),
    ('Canada', 'Ontario', 45000.00, '2023-01-03'),
    ('Canada', 'Quebec', 48000.00, '2023-01-04'),
    ('Germany', 'Bavaria', 55000.00, '2023-01-05'),
    ('USA', 'Texas', 52000.00, '2023-01-06'),
    ('Canada', 'Alberta', 49000.00, '2023-01-07'),
    ('Germany', 'Hesse', 58000.00, '2023-01-08'),
    ('USA', 'Florida', 51000.00, '2023-01-09'),
    ('Canada', 'British Columbia', 47000.00, '2023-01-10');

-- Query the data
SELECT country_name, state_name, income, date
FROM income_data;
