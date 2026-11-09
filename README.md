# MySQL Assignment 2 – Querying Data

## Project Overview
This assignment focuses on retrieving, filtering, sorting, grouping, and analyzing employee information using MySQL. It demonstrates practical knowledge of SQL queries and database relationships.

## Database Name
`Employee`

## Tables Created
The assignment uses three relational tables:

1. **Employees** – Stores employee details such as employee ID, name, age, gender, salary, hire date, designation, department ID, and location ID.
2. **Departments** – Stores department ID and department name.
3. **Location** – Stores location ID and location name.

## Database Relationships
- `Employees.department_id` references `Departments.department_id`.
- `Employees.location_id` references `Location.location_id`.
- Primary keys and foreign keys maintain data integrity.

## SQL Concepts Covered

### 1. Data Retrieval
- SELECT
- DISTINCT
- Column Aliases (AS)

### 2. Filtering Data
- WHERE
- AND
- Comparison Operators
- IS NULL
- LIKE

### 3. Sorting and Limiting
- ORDER BY
- ASC
- DESC
- LIMIT

### 4. Aggregate Functions
- SUM()
- MIN()
- MAX()
- AVG()
- COUNT()

### 5. Grouping and Filtering Groups
- GROUP BY
- HAVING

### 6. Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

## Business Questions Solved

1. Retrieve distinct employee salaries.
2. Display employee age and salary using aliases.
3. Find employees earning more than ₹50,000 and hired before 2016.
4. Identify employees with missing designations and update them.
5. Sort employees by department ID and salary.
6. Retrieve the first five employees hired in 2018.
7. Calculate total salaries in the Finance department.
8. Find the minimum employee age.
9. Identify the maximum salary for each location.
10. Calculate average salary for each designation containing 'Analyst'.
11. Find departments with fewer than three employees.
12. Find locations where female employees have an average age below 30.
13. Retrieve employee names, designations, and department names using INNER JOIN.
14. Display all departments and their employee counts using LEFT JOIN.
15. Display all locations and their assigned employees using RIGHT JOIN.

## Tools Used
- MySQL
- MySQL Workbench
- SQL

## Key Learning Outcomes
- Understanding relational databases.
- Writing SQL queries to retrieve and manipulate data.
- Applying aggregate functions for business analysis.
- Using GROUP BY and HAVING for data summarization.
- Understanding and implementing different types of JOINs.
- Handling missing values using NULL conditions.
- Understanding primary keys and foreign key relationships.

## How to Execute the Assignment

1. Open MySQL Workbench.
2. Create the Employee database.
3. Create Employees, Departments, and Location tables.
4. Insert the sample records into the tables.
5. Execute the SQL queries in the assignment.
6. Verify the results using SELECT statements.

## Conclusion
This assignment provided practical experience in SQL querying, data manipulation, aggregation, and relational database operations. These concepts form an important foundation for Data Analytics and database management.

---
**Project:** MySQL Assignment 2 – Querying Data  
**Role:** Aspiring Data Analyst  
**Technology:** MySQL
