USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;