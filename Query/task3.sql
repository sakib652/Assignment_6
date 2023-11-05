SELECT
c.name AS category_name,
ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue

FROM categories AS c JOIN products AS p ON c.category_id = p.category_id JOIN order_items AS oi ON p.product_id = oi.product_id
GROUP BY category_name
ORDER BY total_revenue DESC;
