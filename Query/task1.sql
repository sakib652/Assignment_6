SELECT
c.customer_id,
c.name AS customer_name,
c.email AS customer_email,
c.location AS customer_location,
COUNT(o.order_id) AS total_orders_placed

FROM customers AS c LEFT JOIN  orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name, c.email, c.location
ORDER BY total_orders_placed DESC;
 