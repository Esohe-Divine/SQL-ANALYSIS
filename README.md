# SQL-ANALYSIS
Data analysis project using SQL to perform multi-table joins, salary benchmarking, and conditional formatting (COALESCE/IFNULL) on employee datasets.

# Parks and Recreation: SQL Data Analysis

This repository contains a collection of SQL queries designed to extract and analyze employee data from the **parks_and_recreation** database.

## Assignment Tasks & Solutions

### 1. Employee Directory
**Goal:** Display each employee's full name, occupation, and department name. Only include employees with a valid department assigned.

```sql
SELECTs.first_name, s.last_name, s.occupation, p.department_name
FROM parks_and_recreation.employee_salary as s
JOIN parks_and_recreation.parks_departments as p
ON s.dept_id = p.department_id;
```

### 2. Department Salary Statistics
**Goal:** Show the average, minimum, and maximum salary for each department.

```sql
SELECT 
    dept_id,
    AVG(salary),
    MIN(salary),
    MAX(salary)
FROM employee_salary
GROUP BY dept_id;
```

### 3. High-Earner Analysis
**Goal:** Display employees whose salary is above the company-wide average.

```sql
SELECT first_name, last_name, salary
FROM employee_salary
WHERE salary > (SELECT AVG(salary) FROM employee_salary);
```


### 4. Data Cleaning (Handling Missing Records)
**Goal:** List all employees and their occupations. If an employee lacks a salary record, display 'Not Assigned'.

```sql
SELECT 
    d.first_name, 
    d.last_name, 
    IFNULL(s.occupation, 'Not Assigned') AS occupation
FROM parks_and_recreation.employee_demographics AS d
LEFT JOIN parks_and_recreation.employee_salary AS s 
    ON d.employee_id = s.employee_id;
```
