
-- ✅ Query 1: Show all customers and their orders (LEFT JOIN)
SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id,
    o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- ✅ Query 2: Total orders by each customer
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_orders DESC;

-- ✅ Query 3: Customers with more than 2 orders
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING total_orders > 2
ORDER BY total_orders DESC;

-- ✅ Query 4: Latest order for each customer
SELECT 
    c.name AS customer_name,
    MAX(o.order_date) AS latest_order
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- ✅ Query 5: Total revenue by customer
SELECT 
    c.name AS customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- ✅ Query 6: Top 3 customers by total spending
SELECT 
    c.name AS customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 3;

-- ✅ Query 7: Number of products in each order
SELECT 
    o.order_id,
    COUNT(DISTINCT oi.product_id) AS product_count
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
ORDER BY product_count DESC;
