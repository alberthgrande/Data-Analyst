SELECT
    first_name AS `Employee`,
    hire_date AS `Hire Date`
FROM employees
WHERE YEAR(hire_date) = YEAR(CURRENT_DATE);