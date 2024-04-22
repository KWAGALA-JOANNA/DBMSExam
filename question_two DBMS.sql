DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	Id INT PRIMARY KEY,
	Name VARCHAR(255),
	Age INT,
	Address VARCHAR(255)
);

INSERT INTO employees(Id, Name, Age, Address)
VALUES (1001, 'Rohan', 26, 'Dehli'),
		(1002, 'Ankit', 30, 'Gurgaon'),
		(1003, 'Gaurav', 27, 'Mumbai'),
		(1004, 'Raja', 32, 'Nagpur');
		
-- displaying employee with id 1004		
SELECT * FROM employees WHERE Id = 1004 ;

-- displaying all employees
SELECT * FROM employees;

-- displaying employees starting with R
SELECT * FROM employees WHERE Name ILIKE 'R%';

-- Ascending order
SELECT Id, Age, Name FROM employees ORDER BY Age ASC;

-- Descending order
SELECT Id, Age, Name FROM employees ORDER BY Age DESC;

-- Different addresses using select distinct
SELECT DISTINCT  Address FROM employees;






