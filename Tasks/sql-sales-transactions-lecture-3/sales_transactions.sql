CREATE DATABASE sales_transactions;

CREATE TABLE sales (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(12,2),
    discount_percent DECIMAL(5,2),
    city VARCHAR(50),
    payment_mode VARCHAR(20),
    salesperson VARCHAR(50),
    customer_type VARCHAR(20)
);

INSERT INTO sales (
    transaction_id,
    customer_name,
    product_name,
    category,
    quantity,
    unit_price,
    discount_percent,
    city,
    payment_mode,
    salesperson,
    customer_type
) VALUES
(1001, 'Aarav Mehta', 'Laptop Pro 15', 'Electronics', 2, 75000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Shah', 'Office Chair', 'Furniture', 5, 12000, 8, 'Mumbai', 'Card', 'Neha', 'Regular'),
(1003, 'Rohan Patel', 'Smartphone X', 'Electronics', 3, 45000, 12, 'Ahmedabad', 'UPI', 'Amit', 'Premium'),
(1004, 'Sneha Verma', 'Refrigerator', 'Appliances', 1, 68000, 15, 'Delhi', 'Card', 'Priya', 'VIP'),
(1005, 'Karan Joshi', 'Dining Table', 'Furniture', 4, 18000, 5, 'Pune', 'Cash', 'Rahul', 'Regular'),
(1006, 'Ananya Rao', 'Laptop Air 14', 'Electronics', 1, 62000, 7, 'Bangalore', 'Online', 'Neha', 'Premium'),
(1007, 'Vikram Singh', 'Washing Machine', 'Appliances', 2, 42000, 18, 'Jaipur', 'UPI', 'Amit', 'Regular'),
(1008, 'Meera Kapoor', 'Smartphone Pro', 'Electronics', 4, 55000, 20, 'Mumbai', 'Card', 'Priya', 'VIP'),
(1009, 'Aditya Shah', 'Sofa Set', 'Furniture', 3, 35000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1010, 'Ishita Patel', 'Air Conditioner', 'Appliances', 2, 58000, 12, 'Surat', 'UPI', 'Neha', 'Premium'),
(1011, 'Raj Malhotra', 'Gaming Laptop', 'Electronics', 2, 95000, 15, 'Delhi', 'Card', 'Amit', 'VIP'),
(1012, 'Kavya Desai', 'Bookshelf', 'Furniture', 6, 9000, 5, 'Pune', 'Cash', 'Priya', 'Regular'),
(1013, 'Arjun Mehta', 'Smart TV 55', 'Electronics', 2, 72000, 18, 'Bangalore', 'Online', 'Rahul', 'Premium'),
(1014, 'Nisha Sharma', 'Microwave Oven', 'Appliances', 3, 22000, 8, 'Ahmedabad', 'UPI', 'Neha', 'Regular'),
(1015, 'Yash Patel', 'Refrigerator Pro', 'Appliances', 1, 82000, 20, 'Mumbai', 'Card', 'Amit', 'VIP'),
(1016, 'Simran Kaur', 'Office Desk', 'Furniture', 5, 16000, 12, 'Delhi', 'Online', 'Priya', 'Regular'),
(1017, 'Dev Kumar', 'Smartphone Ultra', 'Electronics', 3, 68000, 10, 'Jaipur', 'UPI', 'Rahul', 'Premium'),
(1018, 'Riya Shah', 'Washing Machine Pro', 'Appliances', 4, 48000, 22, 'Surat', 'Card', 'Neha', 'Premium'),
(1019, 'Manav Joshi', 'Premium Sofa', 'Furniture', 2, 65000, 15, 'Ahmedabad', 'Online', 'Amit', 'VIP'),
(1020, 'Pooja Mehta', 'Tablet Pro', 'Electronics', 5, 32000, 8, 'Pune', 'UPI', 'Priya', 'Regular'),
(1021, 'Harsh Verma', 'Laptop Ultra', 'Electronics', 3, 88000, 25, 'Mumbai', 'Card', 'Rahul', 'VIP'),
(1022, 'Neel Shah', 'Air Conditioner Pro', 'Appliances', 2, 76000, 10, 'Delhi', 'Online', 'Neha', 'Premium'),
(1023, 'Tanvi Rao', 'Dining Set', 'Furniture', 4, 28000, 18, 'Bangalore', 'Cash', 'Amit', 'Regular'),
(1024, 'Siddharth Patel', 'Smart TV Pro', 'Electronics', 6, 60000, 12, 'Surat', 'UPI', 'Priya', 'Premium'),
(1025, 'Aisha Khan', 'Double Door Refrigerator', 'Appliances', 2, 92000, 20, 'Ahmedabad', 'Card', 'Rahul', 'VIP'),
(1026, 'Mohit Singh', 'Executive Chair', 'Furniture', 7, 14000, 10, 'Jaipur', 'Online', 'Neha', 'Regular'),
(1027, 'Diya Mehta', 'Gaming Monitor', 'Electronics', 3, 52000, 15, 'Delhi', 'UPI', 'Amit', 'Premium'),
(1028, 'Varun Shah', 'Washing Machine', 'Appliances', 5, 38000, 28, 'Mumbai', 'Cash', 'Priya', 'Regular'),
(1029, 'Isha Patel', 'Luxury Sofa', 'Furniture', 3, 78000, 12, 'Pune', 'Card', 'Rahul', 'VIP'),
(1030, 'Dhruv Sharma', 'Business Laptop', 'Electronics', 2, 110000, 18, 'Bangalore', 'Online', 'Neha', 'VIP');

SELECT * FROM sales;

-- TASK : 1 --
SELECT * FROM sales 
ORDER BY unit_price DESC;

-- Task : 2 --
SELECT *
FROM sales 
WHERE unit_price > 50000 AND quantity > 1;

-- TASK : 3 -- 
SELECT *
FROM sales
WHERE customer_type = 'Premium' AND unit_price > 25000;

-- TASK : 4 --
SELECT * 
FROM sales
WHERE discount_percent > 15 AND quantity >= 3;

-- TASK : 5 --
SELECT * 
FROM sales
WHERE city IN ('Ahmedabad', 'Mumbai', 'Delhi') AND unit_price > 20000;

-- TASK : 6 --
SELECT * 
FROM sales
WHERE payment_mode IN ('Online', 'Card') AND quantity > 2;

-- TASK : 7 --
SELECT * 
FROM sales
WHERE category IN ('Electronics', 'Furniture', 'Appliances') AND discount_percent > 10;

-- TASK : 8 --
SELECT * 
FROM sales
WHERE customer_type IN ('Premium', 'Regular') AND unit_price > 30000 AND quantity > 1;

-- TASK : 9 -- 
SELECT * 
FROM sales
WHERE salesperson <> 'RAHUL' AND quantity > 4 AND discount_percent < 20; -- <> used for NOT operator -- 

-- TASK : 10 -- 
SELECT * 
FROM sales
WHERE quantity > 5 AND unit_price > 10000 OR 
quantity BETWEEN 2 AND 5 AND unit_price > 50000;

-- TASK : 11 --
SELECT * 
FROM sales
WHERE city <> 'Ahmedabad' AND quantity > 2 AND unit_price > 20000 AND payment_mode = 'Cash';

-- TASK : 12 --
SELECT * 
FROM sales
WHERE category = 'Electronics' AND unit_price > 40000 AND quantity > 1 AND discount_percent < 15;

-- TASK : 13 --
SELECT * 
FROM sales
WHERE category = 'Furniture' AND (quantity > 3 OR unit_price > 25000);

-- TASK : 14 --
SELECT * 
FROM sales
WHERE customer_type = 'Premium' AND payment_mode <> 'Cash' AND quantity > 1 AND unit_price > 20000;

-- TASK : 15 --
SELECT * 
FROM sales
WHERE unit_price > 50000 AND discount_percent > 10;

-- TASK : 16 --
SELECT * 
FROM sales
WHERE ( category = 'Electronics' AND quantity > 2 AND discount_percent < 15 )OR
( category = 'Furniture' AND quantity > 3 AND unit_price > 20000 )OR
(category = 'Appliance ' AND unit_price > 40000);

-- TASK : 17 --
SELECT *
FROM sales
WHERE customer_type IN ('Premium', 'VIP')
  AND city <> 'Ahmedabad'
  AND (quantity > 3 OR unit_price > 60000);

-- TASK : 18 -- 
SELECT *
FROM sales
WHERE payment_mode <> 'Cash' AND city <> 'Mumbai' 
    AND (discount_percent > 20 AND quantity > 2 AND unit_price < 50000);

-- TASK : 19 --
SELECT *
FROM sales
WHERE customer_type = 'Premium' AND category = 'Electronics' AND unit_price > 40000
    OR customer_type = 'VIP' AND unit_price > 50000
    OR customer_type = 'Regular' AND quantity > 5 AND unit_price > 10000;

-- TASK : 20 --
SELECT *
FROM sales
WHERE ((customer_type = 'Premium' AND category = 'Electronics' AND unit_price > 35000)
         OR (customer_type = 'VIP' AND category = 'Furniture' AND quantity > 2)
         OR (customer_type = 'Regular' AND unit_price > 75000)
      )
      AND discount_percent <= 25
      AND payment_mode <> 'Cash'
      AND city <> 'Ahmedabad';


