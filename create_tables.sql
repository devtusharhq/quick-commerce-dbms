-- ============================================
-- Quick Commerce Database Management System
-- Create Tables
-- Developed By: Tushar L. Devendra
-- ============================================

CREATE TABLE customer (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    phone_number VARCHAR2(15) UNIQUE,
    email VARCHAR2(50),
    address VARCHAR2(100),
    registration_date DATE
);

CREATE TABLE product (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50) NOT NULL,
    category VARCHAR2(30),
    price NUMBER(8,2) CHECK (price > 0),
    stock_quantity NUMBER CHECK (stock_quantity >= 0),
    availability_status VARCHAR2(15)
);

CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    order_date DATE,
    order_status VARCHAR2(20),
    total_amount NUMBER(10,2),
    customer_id NUMBER,
    CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
);

CREATE TABLE order_item (
    order_item_id NUMBER PRIMARY KEY,
    quantity NUMBER CHECK (quantity > 0),
    price_at_order NUMBER(8,2),
    order_id NUMBER,
    product_id NUMBER,

    CONSTRAINT fk_order
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    CONSTRAINT fk_product
    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
);
