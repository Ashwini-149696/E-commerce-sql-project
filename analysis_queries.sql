
-- List all customers who completed an order
SELECT DISTINCT c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.status = 'completed';

-- Total revenue from completed orders
SELECT SUM(amount) AS total_revenue
FROM Orders
WHERE status = 'completed';

-- Top selling products by quantity
SELECT p.name, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
JOIN Orders o ON od.order_id = o.order_id
WHERE o.status = 'completed'
GROUP BY p.name
ORDER BY total_sold DESC;

-- Revenue by month
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(amount) AS monthly_revenue
FROM Orders
WHERE status = 'completed'
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

-- Top 3 customers by spending
SELECT 
    c.name,
    SUM(o.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.status = 'completed'
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- Product sales report
SELECT 
    p.name AS product,
    SUM(od.quantity) AS units_sold,
    SUM(od.quantity * p.price) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
JOIN Orders o ON od.order_id = o.order_id
WHERE o.status = 'completed'
GROUP BY p.name
ORDER BY total_revenue DESC;
