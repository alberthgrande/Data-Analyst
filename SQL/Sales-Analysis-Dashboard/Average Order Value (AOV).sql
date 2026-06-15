-- SELECT SUM(quantity * unit_price) / COUNT(DISTINCT order_id) AS average_order_value
-- FROM orders;

SELECT AVG(order_total)
FROM (
    SELECT order_id, SUM(quantity * unit_price) AS order_total
    FROM orders
    GROUP BY order_id
) t;