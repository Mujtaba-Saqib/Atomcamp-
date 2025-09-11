-- Match employees with their departments. Show full names and department names.
SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees e
JOIN dept_emp de  ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'; 

-- The CEO forgot which managers lead which departments — retrieve that info for the next all-hands.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS manager_name
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e     ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'; 

-- Some employees are changing roles. Show each employee’s current title (hint: it’s the one with to_date = '9999-01-01').
SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) AS full_name, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01';
