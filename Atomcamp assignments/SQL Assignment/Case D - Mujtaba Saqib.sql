-- Classify employees into bands: <40,000 → 'Low' , 40,000–80,000 → 'Medium' ,80,000 → 'High' Return employee number and the band label.
SELECT emp_no,
       CASE
           WHEN salary < 40000 THEN 'Low'
           WHEN salary BETWEEN 40000 AND 80000 THEN 'Medium'
           WHEN salary > 80000 THEN 'High'
       END AS salary_label
FROM salaries 
WHERE to_date = '9999-01-01';
