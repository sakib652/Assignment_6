SELECT
p.name AS product_name,
o.order_id,
oi.quantity,ROUND((oi.quantity * oi.unit_price),2) AS total_amount

FROM order_items AS oi JOIN products AS p ON oi.product_id = p.product_id  JOIN orders AS o ON oi.order_id = o.order_id
ORDER BY o.order_id ASC;