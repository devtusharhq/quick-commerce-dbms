-- Reset
CLEAR COLUMNS
SET LINESIZE 200
SET PAGESIZE 50
SET WRAP OFF

PROMPT
PROMPT ===== CUSTOMER TABLE =====
PROMPT

-- CUSTOMER
COLUMN customer_id FORMAT 99
COLUMN customer_name FORMAT A15
COLUMN phone_number FORMAT A12
COLUMN email FORMAT A22
COLUMN address FORMAT A12
COLUMN registration_date FORMAT A18

SELECT customer_id,
       customer_name,
       phone_number,
       email,
       address,
       TO_CHAR(registration_date,'DD-MON-YY') AS registration_date
FROM customer;

PROMPT
PROMPT ===== PRODUCT TABLE =====
PROMPT

-- PRODUCT
CLEAR COLUMNS
COLUMN product_id FORMAT 999
COLUMN product_name FORMAT A15
COLUMN category FORMAT A15
COLUMN price FORMAT 999
COLUMN stock_quantity FORMAT 999
COLUMN availability_status FORMAT A20

SELECT product_id,
       product_name,
       category,
       price,
       stock_quantity,
       availability_status
FROM product;

PROMPT
PROMPT ===== ORDERS TABLE =====
PROMPT

-- ORDERS
CLEAR COLUMNS
COLUMN order_id FORMAT 9999
COLUMN order_date FORMAT A15
COLUMN order_status FORMAT A12
COLUMN total_amount FORMAT 999
COLUMN customer_id FORMAT 999

SELECT order_id,
       TO_CHAR(order_date,'DD-MON-YY') AS order_date,
       order_status,
       total_amount,
       customer_id
FROM orders;
