-- ============================================
-- Quick Commerce Database Management System
-- Sample Data
-- ============================================

-- CUSTOMER

INSERT INTO customer VALUES
(1,'Amit Sharma','9876543210','amit@gmail.com','Mumbai',SYSDATE);

INSERT INTO customer VALUES
(2,'Neha Patil','9123456780','neha@gmail.com','Pune',SYSDATE);

INSERT INTO customer VALUES
(3,'Rahul Verma','9988776655','rahul@gmail.com','Delhi',SYSDATE);

INSERT INTO customer VALUES
(4,'Sneha Joshi','9012345678','sneha@gmail.com','Nagpur',SYSDATE);

INSERT INTO customer VALUES
(5,'Karan Mehta','9090909090','karan@gmail.com','Ahmedabad',SYSDATE);

------------------------------------------------

-- PRODUCT

INSERT INTO product VALUES
(101,'Milk','Dairy',50,100,'Available');

INSERT INTO product VALUES
(102,'Bread','Bakery',40,60,'Available');

INSERT INTO product VALUES
(103,'Rice','Grocery',70,200,'Available');

INSERT INTO product VALUES
(104,'Eggs','Poultry',6,300,'Available');

INSERT INTO product VALUES
(105,'Soap','Personal Care',30,150,'Available');

------------------------------------------------

-- ORDERS

INSERT INTO orders VALUES
(1001,SYSDATE,'Delivered',250,1);

INSERT INTO orders VALUES
(1002,SYSDATE,'Pending',180,2);

INSERT INTO orders VALUES
(1003,SYSDATE,'Delivered',320,3);

INSERT INTO orders VALUES
(1004,SYSDATE,'Cancelled',90,4);

INSERT INTO orders VALUES
(1005,SYSDATE,'Delivered',150,5);

------------------------------------------------

-- ORDER_ITEM

INSERT INTO order_item VALUES
(1,2,50,1001,101);

INSERT INTO order_item VALUES
(2,1,40,1002,102);

INSERT INTO order_item VALUES
(3,3,70,1003,103);

INSERT INTO order_item VALUES
(4,6,6,1004,104);

INSERT INTO order_item VALUES
(5,2,30,1005,105);

COMMIT;
