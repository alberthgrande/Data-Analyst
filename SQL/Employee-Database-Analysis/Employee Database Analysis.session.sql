-- SELECT * FROM employees;
-- Safely drop the table only if it exists
-- DROP TABLE IF EXISTS employees;

-- SELECT * FROM departments;

SELECT e.first_name, d.department_name, e.salary
FROM employees AS e
LEFT JOIN departments AS d 
ON e.department_id = d.department_id
ORDER BY first_name
LIMIT 10;


