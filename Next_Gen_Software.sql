-- Creating  a Database 

Create Database Next_Gen_Software
Use Next_Gen_Software;

-- Creating a table Data
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Insert Data into Employees Table

INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10'),
(106, 'Pooja', 'Gupta', 'HR', 52000, '2021-05-18'),
(107, 'Vikram', 'Rathore', 'Sales', 78000, '2019-11-05'),
(108, 'Anjali', 'Das', 'IT', 95000, '2017-12-01'),
(109, 'Karan', 'Malhotra', 'Finance', 64000, '2022-06-14'),
(110, 'Sneha', 'Iyer', 'Marketing', 55000, '2021-03-10'),
(111, 'Rahul', 'Nair', 'IT', 88000, '2020-08-19'),
(112, 'Priya', 'Sen', 'Sales', 72000, '2020-10-25'),
(113, 'Deepak', 'Yadav', 'HR', 49000, '2023-01-11'),
(114, 'Tanvi', 'Joshi', 'Marketing', 58000, '2022-04-15'),
(115, 'Manish', 'Kumar', 'Finance', 61000, '2021-07-20'),
(116, 'Swati', 'Reddy', 'IT', 92000, '2018-09-09'),
(117, 'Aakash', 'Bansal', 'Sales', 76000, '2019-06-30'),
(118, 'Divya', 'Menon', 'HR', 53000, '2022-11-12'),
(119, 'Siddharth', 'Roy', 'IT', 87000, '2020-02-28'),
(120, 'Nidhi', 'Aggarwal', 'Marketing', 59000, '2021-10-05');

-- Display all data show

 SELECT * FROM employees;
 
-- Display all employee records sorted by salary from lowest to highest.

Select * FROM employees
ORDER BY Salary ASC;

-- Show employees sorted by department alphabetically (A-Z) and salary from highest

SELECT * FROM employees
ORDER BY Department ASC,Salary DESC;

-- List all employees in the IT department, ordered by hire date with the newest employees first.

SELECT * FROM employees
WHERE Department = 'IT'
ORDER BY Hire_Date DESC;

-- Display all sales records sorted by amount from highest to lowest

SELECT * FROM Sales
ORDER BY Amount DESC;

-- Display employees who work in either 'HR' or 'Finance' department.

SELECT * FROM employees 
WHERE department IN ('HR', 'Finance');

-- Find employees whose salary is between 50,000 and 80,000.

SELECT * FROM employees 
WHERE salary BETWEEN 50000 AND 80000;

-- Find employees whose first name starts with the letter 'A'.

SELECT * FROM employees 
WHERE first_name LIKE 'A%';