USE PowerBi;

-- Create the sales_data table
CREATE TABLE sales_data (
    id INT PRIMARY KEY,
    country VARCHAR(255),
    sales DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    salesman VARCHAR(255),
    sale_date DATE,
    country_code VARCHAR(5),
    customer_id INT,
    price DECIMAL(10, 2),
    cost DECIMAL(10, 2)
);

-- Insert dummy data (20-30 records)
INSERT INTO sales_data (id, country, sales, profit, salesman, sale_date, country_code, customer_id, price, cost)
VALUES
    (1, 'USA', 100000, 50000, 'John Doe', '2023-01-01', 'US', 1, 150.00, 100.00),
    (2, 'Canada', 80000, 40000, 'Jane Smith', '2023-01-02', 'CA', 2, 120.00, 80.00),
    (3, 'France', 120000, 60000, 'Sophie Martin', '2023-01-03', 'FR', 3, 180.00, 120.00),
    (4, 'UK', 90000, 45000, 'David Johnson', '2023-01-04', 'GB', 4, 160.00, 110.00),
    (5, 'Australia', 110000, 55000, 'Emily Brown', '2023-01-05', 'AU', 5, 140.00, 90.00),
    (6, 'Japan', 100000, 50000, 'Kenji Suzuki', '2023-01-06', 'JP', 6, 170.00, 115.00),
    (7, 'Brazil', 95000, 47000, 'Ana Oliveira', '2023-01-07', 'BR', 7, 130.00, 85.00),
    (8, 'Mexico', 85000, 42000, 'Carlos Rodriguez', '2023-01-08', 'MX', 8, 160.00, 110.00),
    (9, 'South Africa', 110000, 55000, 'Thabo Mabaso', '2023-01-09', 'ZA', 9, 140.00, 90.00),
    (10, 'India', 120000, 60000, 'Priya Patel', '2023-01-10', 'IN', 10, 180.00, 120.00),
    (30, 'Germany', 120000, 60000, 'Michael Schmidt', '2023-01-30', 'DE', 30, 180.00, 120.00),
	(31, 'Italy', 95000, 47000, 'Giovanni Rossi', '2023-01-31', 'IT', 31, 130.00, 85.00),
    (32, 'Spain', 85000, 42000, 'Elena Fernandez', '2023-02-01', 'ES', 32, 160.00, 110.00),
    (33, 'Argentina', 110000, 55000, 'Mateo Rodriguez', '2023-02-02', 'AR', 33, 140.00, 90.00),
    (34, 'Russia', 120000, 60000, 'Dmitri Ivanov', '2023-02-03', 'RU', 34, 180.00, 120.00),
    (35, 'China', 90000, 45000, 'Li Wei', '2023-02-04', 'CN', 35, 160.00, 110.00),
    (36, 'South Korea', 100000, 50000, 'Ji-hoon Kim', '2023-02-05', 'KR', 36, 170.00, 115.00),
    (37, 'Nigeria', 95000, 47000, 'Chijioke Nwachukwu', '2023-02-06', 'NG', 37, 130.00, 85.00),
    (38, 'Egypt', 85000, 42000, 'Amira Salah', '2023-02-07', 'EG', 38, 160.00, 110.00),
    (39, 'New Zealand', 110000, 55000, 'Hannah Bennett', '2023-02-08', 'NZ', 39, 140.00, 90.00),
    (40, 'Singapore', 120000, 60000, 'Wei Xiu', '2023-02-09', 'SG', 40, 180.00, 120.00);


-- Query to retrieve the specified columns
SELECT country, sales, profit, salesman, sale_date, country_code, customer_id, price, cost
FROM sales_data;
