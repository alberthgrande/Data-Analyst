SELECT 
    first_name AS `Employee`,
    salary AS `Salary`
FROM employees
WHERE salary = ( 
    SELECT MAX(salary) 
    FROM employees
);

