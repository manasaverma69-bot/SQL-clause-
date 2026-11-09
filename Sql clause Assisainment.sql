create database employeee;
use employeee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(50) NOT NULL
);
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    

    CONSTRAINT fk_department
    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    CONSTRAINT fk_location
    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

DESC Departments;

DESC Location;

DESC Employees;
INSERT INTO Departments VALUES
(1, 'Finance'),
(2, 'HR'),
(3, 'IT'),
(4, 'Sales'),
(5, 'Marketing');
INSERT INTO Location VALUES
(101, 'Bangalore'),
(102, 'Hyderabad'),
(103, 'Chennai'),
(104, 'Mumbai'),
(105, 'Pune');
INSERT INTO Employees VALUES
(1, 'Anil Kumar', 28, 'Male', 55000, '2015-03-15', 'Data Analyst', 1, 101),
(2, 'Priya Sharma', 26, 'Female', 48000, '2018-06-10', 'HR Analyst', 2, 102),
(3, 'Rahul Verma', 32, 'Male', 65000, '2014-02-20', 'Senior Analyst', 3, 101),
(4, 'Sneha Reddy', 25, 'Female', 45000, '2019-07-12', 'Business Analyst', 4, 103),
(5, 'Arjun Rao', 29, 'Male', 52000, '2016-01-15', 'Financial Analyst', 1, 104),
(6, 'Divya Kumar', 27, 'Female', 58000, '2017-04-18', 'Data Analyst', 3, 102),
(7, 'Kiran Patel', 35, 'Male', 70000, '2013-09-25', 'Manager', 4, 105),
(8, 'Meena Das', 24, 'Female', 42000, '2018-11-05', 'HR Executive', 2, 103),
(9, 'Suresh Raju', 31, 'Male', 60000, '2015-08-14', NULL, 3, 101),
(10, 'Lakshmi Devi', 28, 'Female', 49000, '2018-02-10', 'Marketing Analyst', 5, 104);
SELECT * FROM Departments;

SELECT * FROM Location;

SELECT * FROM Employees;
SELECT DISTINCT salary
FROM Employees;
SELECT
    age AS Employee_Age,
    salary AS Employee_Salary
FROM Employees;
SELECT *
FROM Employees
WHERE salary > 50000
AND hire_date < '2016-01-01';
SELECT *
FROM Employees
WHERE designation IS NULL;
UPDATE Employees
SET designation = 'Data Scientist'
WHERE designation IS NULL;
SELECT *
FROM Employees
ORDER BY department_id ASC, salary DESC;
SELECT *
FROM Employees
WHERE YEAR(hire_date) = 2018
ORDER BY hire_date ASC
LIMIT 5;
SELECT SUM(e.salary) AS Total_Finance_Salary;
SELECT MIN(age) AS Minimum_Age;
SELECT
    l.location_name,
    MAX(e.salary) AS Maximum_Salary
FROM Location l
LEFT JOIN Employees e
ON l.location_id = e.location_id
GROUP BY l.location_name;
 select designation,
    AVG(salary) AS Average_Salary
FROM Employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
SELECT
    l.location_name,
    AVG(e.age) AS Average_Age
FROM Location l
INNER JOIN Employees e
ON l.location_id = e.location_id
WHERE e.gender = 'Female'
GROUP BY l.location_name
HAVING AVG(e.age) < 30;
SELECT
    e.emp_name,
    e.designation,
    d.department_name
FROM Employees e
INNER JOIN Departments d
ON e.department_id = d.department_id;