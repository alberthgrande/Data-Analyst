SELECT 
    CONCAT(year, '-', LPAD(month, 2, '0')) AS month,
    total_sales 
FROM (
    SELECT
        YEAR(order_date) AS year,
        MONTH(order_date) AS month,
        SUM(quantity * unit_price) AS total_sales
    FROM orders
    GROUP BY YEAR(order_date), MONTH(order_date)
) AS monthly_sales
ORDER BY year, month;