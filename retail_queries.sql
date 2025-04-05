-- Query 1: Total revenue by product
-- Shows each product's total revenue across all orders
SELECT
  p.name AS product_name,
  SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_revenue DESC;

-- Query 2: Monthly revenue report with running total
-- Displays revenue generated per month and cumulative total
SELECT
  DATE_FORMAT(o.order_date, '%Y-%m') AS month,                           -- Extract year-month from the order date
  SUM(oi.quantity * oi.unit_price) AS monthly_revenue,                    -- Calculate total revenue for each month
  SUM(SUM(oi.quantity * oi.unit_price)) OVER (ORDER BY DATE_FORMAT(o.order_date, '%Y-%m')) AS running_total  -- Cumulative revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;


-- Query 3: Repeat customers
-- Lists customers who placed more than one order
SELECT
  c.name,
  COUNT(DISTINCT o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(DISTINCT o.order_id) > 1;

-- Query 4: Customer lifetime value (CLV)
-- Calculates total spend by each customer
SELECT
  c.name,
  SUM(oi.quantity * oi.unit_price) AS lifetime_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY lifetime_value DESC;

-- Query 5: Top 3 products by revenue using window function
-- Uses RANK to find top-selling products
SELECT * 
FROM (
  SELECT
    p.name AS product_name,
    SUM(oi.quantity * oi.unit_price) AS revenue,
    RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS `rank`
  FROM products p
  JOIN order_items oi ON p.product_id = oi.product_id
  GROUP BY p.product_id
) ranked_products
WHERE `rank` <= 3  -- Limit to top 3 products
ORDER BY `rank`;

-- Query 6: Low stock alerts
-- Flags products with stock below threshold
SELECT
  name AS product_name,
  stock_quantity
FROM products
WHERE stock_quantity < 25
ORDER BY stock_quantity;