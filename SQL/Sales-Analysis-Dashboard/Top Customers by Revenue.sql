SELECT customer_name, SUM(o.quantity * o.unit_price) AS revenue
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY revenue DESC;
