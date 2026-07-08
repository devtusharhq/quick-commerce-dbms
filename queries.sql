-- ============================================
-- Quick Commerce Database Management System
-- SQL Queries
-- ============================================

------------------------------------------------
-- Query 1
------------------------------------------------

SELECT *
FROM customer;

------------------------------------------------
-- Query 2
------------------------------------------------

SELECT product_name,
       price,
       stock_quantity
FROM product
WHERE availability_status='Available';

------------------------------------------------
-- Query 3
------------------------------------------------

UPDATE product
SET stock_quantity = stock_quantity - 2
WHERE product_id = 101;

------------------------------------------------
-- Query 4
------------------------------------------------

DELETE FROM orders
WHERE order_status='Cancelled';

------------------------------------------------
-- Query 5
------------------------------------------------

SELECT COUNT(*) AS total_customers
FROM customer;

------------------------------------------------
-- Query 6
------------------------------------------------

SELECT AVG(price) AS average_price
FROM product;

------------------------------------------------
-- Query 7
------------------------------------------------

SELECT customer_id,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;

------------------------------------------------
-- Query 8
------------------------------------------------

SELECT customer_id,
       COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

------------------------------------------------
-- Query 9
------------------------------------------------

SELECT c.customer_name,
       o.order_id,
       o.order_status,
       o.total_amount
FROM customer c
JOIN orders o
ON c.customer_id=o.customer_id;

------------------------------------------------
-- Query 10
------------------------------------------------

SELECT o.order_id,
       p.product_name,
       oi.quantity,
       oi.price_at_order
FROM orders o
JOIN order_item oi
ON o.order_id=oi.order_id
JOIN product p
ON oi.product_id=p.product_id;

------------------------------------------------
-- Query 11
------------------------------------------------

SELECT product_name,
       price
FROM product
WHERE price >
(
SELECT AVG(price)
FROM product
);

------------------------------------------------
-- Query 12
------------------------------------------------

ALTER TABLE orders
ADD CONSTRAINT chk_order_status
CHECK
(
order_status IN
('Pending','Delivered','Cancelled')
);
