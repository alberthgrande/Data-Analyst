SELECT 
    d.department_name AS `Department`,
    ROUND(SUM(e.salary),2) AS `Total Salary Expense`
FROM employees AS e 
INNER JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;