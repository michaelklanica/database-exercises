USE employees;

# 1. Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows:
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# 2. Find all employees whose last name starts with 'E' - 7330 rows:
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# 3. Find all employees hired in the 90s - 135214 rows:
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

# 4. Find employees born on Christmas - 842 rows:
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

# 5. Find all employees with a 'Q' in their last name - 1873 rows:
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# 6. Update exercise #1 to use OR instead of IN - 709 rows:
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

# 7. Update exercise #6 to include only males - 441 rows:
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';

# 8. Find all employes whose last name begins or ends with 'e' - 899 rows:
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
   OR last_name LIKE '%e';

# 9. Update exercise #1 to include employees whose last name begins and ends with 'e' - 899 rows:
SELECT *
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

# 10. Find all employees hired in the 90s and born on Christmas - 362 rows:
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25';

# 11. Find all employees with a 'q' in their last name, but not 'qu' - 547 rows:
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';