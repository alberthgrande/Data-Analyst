SELECT 
    d.department_name AS `Department`,
    AVG(e.salary) AS `Average Salary`
FROM employees AS e 
INNER JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;