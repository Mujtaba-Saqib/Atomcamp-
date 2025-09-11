-- Case File A.1 – Newest 10 Employees
SELECT emp_no, first_name, last_name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 10;

-- Case File A.2 – Employees Hired After 2000
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '2000-01-01'
ORDER BY hire_date ASC;

-- Case File A.3 – How Many Johns?
SELECT COUNT(*) AS john_count
FROM employees
WHERE first_name = 'John';