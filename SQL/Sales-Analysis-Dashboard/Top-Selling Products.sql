SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;