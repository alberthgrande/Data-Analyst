SELECT 
    YEAR(e.hire_date) AS `Hire Year`, 
    COUNT(*) AS `Count Hire per Year`
FROM employees AS e
GROUP BY YEAR(e.hire_date)
ORDER BY `Hire Year`;