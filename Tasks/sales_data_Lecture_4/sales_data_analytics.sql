CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE sales_transactions (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(12, 2) NOT NULL,
    discount DECIMAL(5, 2) NOT NULL DEFAULT 0,
    city VARCHAR(50) NOT NULL,
    payment_mode VARCHAR(30) NOT NULL,
    salesperson VARCHAR(100) NOT NULL,
    customer_type VARCHAR(30) NOT NULL
);

INSERT INTO sales_transactions
(transaction_id, customer_name, product_name, category, quantity,
 unit_price, discount, city, payment_mode, salesperson, customer_type)
VALUES
(1001, 'Amit Sharma', 'Laptop', 'Electronics', 2, 75000, 10, 'Mumbai', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Patel', 'Office Chair', 'Furniture', 4, 12000, 5, 'Ahmedabad', 'Card', 'Neha', 'Regular'),
(1003, 'Rohit Verma', 'Refrigerator', 'Appliances', 2, 45000, 15, 'Delhi', 'Cash', 'Amit', 'VIP'),
(1004, 'Sneha Gupta', 'Smartphone', 'Electronics', 3, 50000, 10, 'Mumbai', 'Online', 'Rahul', 'VIP'),
(1005, 'Karan Shah', 'Dining Table', 'Furniture', 2, 35000, 8, 'Pune', 'Card', 'Neha', 'Premium'),
(1006, 'Anjali Desai', 'Washing Machine', 'Appliances', 3, 30000, 12, 'Ahmedabad', 'Online', 'Amit', 'Regular'),
(1007, 'Vikas Singh', 'Monitor', 'Electronics', 5, 18000, 5, 'Delhi', 'Card', 'Priya', 'Premium'),
(1008, 'Meera Joshi', 'Sofa', 'Furniture', 1, 85000, 10, 'Mumbai', 'Online', 'Neha', 'VIP'),
(1009, 'Arjun Mehta', 'Microwave', 'Appliances', 4, 15000, 7, 'Pune', 'Cash', 'Amit', 'Regular'),
(1010, 'Pooja Nair', 'Tablet', 'Electronics', 3, 40000, 15, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1011, 'Suresh Kumar', 'Bookshelf', 'Furniture', 3, 20000, 5, 'Delhi', 'Card', 'Priya', 'Regular'),
(1012, 'Kavita Rao', 'Air Conditioner', 'Appliances', 2, 55000, 10, 'Mumbai', 'Online', 'Amit', 'VIP'),
(1013, 'Manish Jain', 'Gaming Laptop', 'Electronics', 2, 110000, 12, 'Pune', 'Card', 'Rahul', 'VIP'),
(1014, 'Divya Shah', 'Study Table', 'Furniture', 4, 15000, 8, 'Ahmedabad', 'Cash', 'Neha', 'Premium'),
(1015, 'Nikhil Roy', 'Dishwasher', 'Appliances', 2, 40000, 18, 'Delhi', 'Online', 'Amit', 'Premium'),
(1016, 'Riya Kapoor', 'Smart TV', 'Electronics', 3, 65000, 10, 'Mumbai', 'Card', 'Priya', 'VIP'),
(1017, 'Akash Patel', 'Wardrobe', 'Furniture', 2, 45000, 15, 'Pune', 'Online', 'Neha', 'Regular'),
(1018, 'Simran Kaur', 'Vacuum Cleaner', 'Appliances', 5, 12000, 5, 'Ahmedabad', 'Card', 'Amit', 'Premium'),
(1019, 'Deepak Yadav', 'Headphones', 'Electronics', 6, 8000, 20, 'Delhi', 'Cash', 'Rahul', 'Regular'),
(1020, 'Isha Malhotra', 'Recliner Chair', 'Furniture', 2, 40000, 10, 'Mumbai', 'Online', 'Neha', 'VIP'),
(1021, 'Varun Shah', 'Water Purifier', 'Appliances', 3, 18000, 12, 'Pune', 'Card', 'Amit', 'Regular'),
(1022, 'Tanya Bose', 'Camera', 'Electronics', 2, 60000, 5, 'Ahmedabad', 'Online', 'Priya', 'Premium'),
(1023, 'Harsh Mehta', 'Coffee Table', 'Furniture', 5, 10000, 18, 'Delhi', 'Card', 'Neha', 'VIP'),
(1024, 'Neha Soni', 'Clothes Dryer', 'Appliances', 2, 35000, 8, 'Mumbai', 'Online', 'Amit', 'Premium'),
(1025, 'Rajiv Bansal', 'Printer', 'Electronics', 4, 22000, 10, 'Pune', 'Cash', 'Rahul', 'Regular'),
(1026, 'Aarti Mishra', 'King Size Bed', 'Furniture', 2, 60000, 12, 'Ahmedabad', 'Online', 'Neha', 'VIP'),
(1027, 'Mohit Arora', 'Electric Oven', 'Appliances', 3, 25000, 15, 'Delhi', 'Card', 'Amit', 'Premium'),
(1028, 'Sakshi Jain', 'Desktop Computer', 'Electronics', 2, 95000, 8, 'Mumbai', 'Online', 'Priya', 'VIP'),
(1029, 'Yash Trivedi', 'Filing Cabinet', 'Furniture', 3, 18000, 5, 'Pune', 'Card', 'Neha', 'Regular'),
(1030, 'Nisha Verma', 'Electric Kettle', 'Appliances', 6, 3000, 10, 'Ahmedabad', 'Online', 'Amit', 'Premium');

SELECT *
FROM sales_transactions;

-- TASK-1 --
SELECT
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price,
    MIN(unit_price) AS lowest_unit_price
FROM sales_transactions;

-- TASK-2 -- 
SELECT
    category,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY category
ORDER BY total_sales_value DESC;

-- TASK-3 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY salesperson
ORDER BY total_sales_value DESC;

-- TASK-4 -- 
SELECT
    customer_type,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_purchased,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY customer_type
ORDER BY total_sales_value DESC;

-- TASK-5 --
SELECT
    city,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY city
ORDER BY total_sales_value DESC;

-- TASK-6 --
SELECT
    payment_mode,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY payment_mode
ORDER BY total_sales_value DESC;

-- TASK-7 -- 
SELECT
    category,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY category
HAVING SUM(quantity * unit_price) > 300000
ORDER BY total_sales_value DESC;

-- TASK-8 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales_transactions
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 500000
ORDER BY total_sales_value DESC;

-- TASK-9 --
SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY product_name
HAVING SUM(quantity) > 5
ORDER BY total_quantity_sold DESC;

-- TASK-10 --
SELECT
    category,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
WHERE customer_type = 'Premium'
GROUP BY category
HAVING SUM(quantity * unit_price) > 200000
ORDER BY total_sales_value DESC;

-- TASK-11 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales_transactions
WHERE customer_type = 'VIP'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 300000
ORDER BY total_sales_value DESC;

-- TASK-12 --
SELECT
    city,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales_transactions
WHERE payment_mode IN ('Online', 'Card')
GROUP BY city
HAVING SUM(quantity * unit_price) > 300000
ORDER BY total_sales_value DESC;

-- TASK-13 --
SELECT
    discount,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
GROUP BY discount
HAVING COUNT(*) >= 2
ORDER BY discount;

-- TASK-14 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price
FROM sales_transactions
WHERE category = 'Electronics'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 250000
ORDER BY total_sales_value DESC;

-- TASK-15 --
SELECT
    city,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
WHERE category = 'Furniture'
  AND quantity > 2
GROUP BY city
HAVING SUM(quantity * unit_price) > 50000
ORDER BY total_sales_value DESC;

-- TASK-16 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price
FROM sales_transactions
WHERE category = 'Appliances'
  AND payment_mode <> 'Cash'
  AND discount < 20
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 100000
ORDER BY total_sales_value DESC;

-- TASK-17 --
SELECT
    customer_type,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price,
    MAX(unit_price) AS maximum_unit_price
FROM sales_transactions
WHERE customer_type IN ('Premium', 'VIP')
GROUP BY customer_type
ORDER BY total_sales_value DESC;

-- TASK-18 --
SELECT
    salesperson,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(discount), 2) AS average_discount_percentage
FROM sales_transactions
WHERE discount > 15
GROUP BY salesperson
HAVING COUNT(*) >= 2
ORDER BY total_sales_value DESC;

-- TASK-19 --
INSERT INTO sales_transactions
(
    transaction_id,
    customer_name,
    product_name,
    category,
    quantity,
    unit_price,
    discount,
    city,
    payment_mode,
    salesperson,
    customer_type
)
VALUES
(
    1031,
    'Raj Mehta',
    'MacBook Pro',
    'Electronics',
    2,
    125000,
    10,
    'Mumbai',
    'Online',
    'Rahul',
    'Premium'
);

SELECT *
FROM sales_transactions
WHERE transaction_id = 1031;

SELECT
    transaction_id,
    customer_name,
    product_name,
    quantity,
    unit_price,
    quantity * unit_price AS total_sales_value,
    discount,
    city,
    payment_mode
FROM sales_transactions
WHERE transaction_id = 1031;

-- TASK-20 --
SELECT
    salesperson,
    category,
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    ROUND(AVG(unit_price), 2) AS average_unit_price,
    MIN(unit_price) AS minimum_unit_price,
    MAX(unit_price) AS maximum_unit_price,
    ROUND(AVG(discount), 2) AS average_discount_percentage
FROM sales_transactions
WHERE customer_type IN ('Premium', 'VIP')
  AND payment_mode <> 'Cash'
  AND quantity > 1
  AND discount < 20
GROUP BY salesperson, category
HAVING SUM(quantity * unit_price) > 200000
ORDER BY total_sales_value DESC;