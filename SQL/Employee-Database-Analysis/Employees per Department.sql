SELECT 
    department_name AS `Department`, 
    COUNT(*) AS `Employee Count`
FROM employees AS e
LEFT JOIN departments AS d
    ON e.department_id = d.department_id
GROUP BY department_name
ORDER BY department_name;