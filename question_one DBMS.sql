DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(255),
salary DECIMAL(10, 2),
department_id INT,
hire_date DATE );

CREATE TABLE departments (
id INT PRIMARY KEY,
name VARCHAR(255) );
INSERT INTO departments (id, name) 
VALUES (1, 'Engineering'),
 		(2, 'Sales'),
 		 (3, 'Marketing'),
  		 (4, 'HR');
 
 
INSERT INTO employees (id, name, salary, department_id, hire_date) 
VALUES (1, 'Alice', 60000.00, 1, '2020-01-01'),
   		(2, 'Bob', 70000.00, 1, '2020-01-15'),
  		(3, 'Charlie', 80000.00, 2, '2020-02-01'),
 		(4, 'Dave', 90000.00, 3, '2020-02-15'),
 		(5, 'Eve', 100000.00, 4, '2020-03-01');
-- a)		

SELECT e.name AS employee_name, e.salary, d.name AS department_name
FROM (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) AS max_salaries
JOIN employees e ON e.department_id = max_salaries.department_id AND e.salary = max_salaries.max_salary
JOIN departments d ON d.id = e.department_id;


-- b)
SELECT e.name AS employee_name, e.hire_date, d.name AS department_name
FROM (
    SELECT department_id, MIN(hire_date) AS min_hire_date
    FROM employees
    GROUP BY department_id
) AS oldest_hire_dates
JOIN employees e ON e.department_id = oldest_hire_dates.department_id AND e.hire_date = oldest_hire_dates.min_hire_date
JOIN departments d ON d.id = e.department_id;

-- C)
-- Query to find the name and salary of employees
SELECT e.name AS employee_name, e.salary, d.name AS department_name 
FROM employees e JOIN departments d ON e.department_id = d.id
WHERE e.salary > (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id
);


