-- The CFO wants to know how many people work in each department. Give him the counts.
SELECT d.dept_name, COUNT(de.emp_no) AS total_employees
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' 
GROUP BY d.dept_name
ORDER BY total_employees DESC;

-- What’s the average salary across the company? Is it too high?
SELECT ROUND(AVG(salary), 2) AS avg_salary
FROM salaries
WHERE to_date = '9999-01-01';

-- Which department pays the best? Find the top salary by department.
SELECT d.dept_name, MAX(s.salary) AS max_salary
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN salaries s  ON de.emp_no = s.emp_no
GROUP BY d.dept_name
ORDER BY max_salary DESC;
