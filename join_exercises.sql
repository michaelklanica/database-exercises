USE employees;
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE e.gender = 'f'
  AND dm.to_date = '9999-01-01';


SELECT t.title as Title, COUNT(t.emp_no) AS Count
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd009'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;
