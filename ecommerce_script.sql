
-- Step 1: Create a new database
DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Step 2: Create tables

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Step 3: Insert sample data

INSERT INTO customers (name, email) VALUES
('Rohit Sharma', 'rohit@gmail.com'),
('Sneha Kapoor', 'sneha@gmail.com'),
('Amit Verma', 'amit@gmail.com');

INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 70000),
('Smartphone', 'Electronics', 30000),
('Headphones', 'Accessories', 5000),
('Backpack', 'Accessories', 2000),
('Tablet', 'Electronics', 25000);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-03-01'),
(1, '2024-03-15'),
(2, '2024-03-10'),
(3, '2024-03-18');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 5, 1),
(4, 2, 1),
(4, 4, 1);

-- Drop & Create Database
DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Customers (10)
INSERT INTO customers (name, email) VALUES
('Rohit Sharma', 'rohit@gmail.com'),
('Sneha Kapoor', 'sneha@gmail.com'),
('Amit Verma', 'amit@gmail.com'),
('Rina Das', 'rina@gmail.com'),
('Faizan Ali', 'faizan@gmail.com'),
('Karan Mehra', 'karan@gmail.com'),
('Tina D''souza', 'tina@gmail.com'),
('Neha Singh', 'neha@gmail.com'),
('Vikas Bhatia', 'vikas@gmail.com'),
('Alok Tiwari', 'alok@gmail.com');

-- Products (8)
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 70000),
('Smartphone', 'Electronics', 30000),
('Headphones', 'Accessories', 5000),
('Backpack', 'Accessories', 2000),
('Tablet', 'Electronics', 25000),
('Wireless Mouse', 'Accessories', 1500),
('Smartwatch', 'Electronics', 10000),
('Power Bank', 'Accessories', 1200);

-- Orders (12)
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-03-01'),
(1, '2024-03-15'),
(2, '2024-03-10'),
(3, '2024-03-18'),
(4, '2024-03-20'),
(5, '2024-03-21'),
(6, '2024-03-22'),
(7, '2024-03-23'),
(8, '2024-03-24'),
(9, '2024-03-25'),
(10, '2024-03-26'),
(2, '2024-04-01');

-- Order Items (20)
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 5, 1),
(4, 2, 1),
(4, 4, 1),
(5, 3, 2),
(6, 7, 1),
(6, 8, 2),
(7, 6, 1),
(7, 5, 1),
(8, 1, 1),
(9, 3, 1),
(10, 2, 1),
(10, 4, 2),
(11, 1, 1),
(11, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 3, 1);

-- Query 1
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    total_orders DESC
LIMIT 5;

-- Drop and create fresh database
DROP DATABASE IF EXISTS ecommerce_big;
CREATE DATABASE ecommerce_big;
USE ecommerce_big;

-- Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert 15 customers
INSERT INTO customers (name, email) VALUES
('Amit Sharma', 'amit@gmail.com'),
('Rina Das', 'rina@gmail.com'),
('Faizan Ali', 'faizan@gmail.com'),
('Karan Mehra', 'karan@gmail.com'),
('Sneha Kapoor', 'sneha@gmail.com'),
('Rohit Kumar', 'rohit@gmail.com'),
('Priya Sinha', 'priya@gmail.com'),
('Neha Singh', 'neha@gmail.com'),
('Vikram Chauhan', 'vikram@gmail.com'),
('Tina Dsouza', 'tina@gmail.com'),
('Alok Tiwari', 'alok@gmail.com'),
('Shivam Rana', 'shivam@gmail.com'),
('Divya Verma', 'divya@gmail.com'),
('Nikhil Joshi', 'nikhil@gmail.com'),
('Megha Jain', 'megha@gmail.com');

-- Insert 15 products
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 70000),
('Smartphone', 'Electronics', 30000),
('Headphones', 'Accessories', 5000),
('Backpack', 'Accessories', 2000),
('Tablet', 'Electronics', 25000),
('Mouse', 'Accessories', 1500),
('Keyboard', 'Accessories', 2500),
('Smartwatch', 'Electronics', 12000),
('Power Bank', 'Accessories', 2000),
('Charger', 'Accessories', 1000),
('Camera', 'Electronics', 40000),
('Monitor', 'Electronics', 15000),
('Router', 'Electronics', 3000),
('USB Cable', 'Accessories', 500),
('Speaker', 'Electronics', 6000);

-- Insert 25 orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-01-05'), (2, '2024-01-06'), (3, '2024-01-07'),
(1, '2024-01-15'), (4, '2024-01-18'), (5, '2024-01-20'),
(6, '2024-01-21'), (7, '2024-01-22'), (8, '2024-01-23'),
(9, '2024-01-24'), (10, '2024-01-25'), (11, '2024-01-26'),
(12, '2024-01-27'), (13, '2024-01-28'), (14, '2024-01-29'),
(15, '2024-01-30'), (1, '2024-02-01'), (2, '2024-02-02'),
(3, '2024-02-03'), (4, '2024-02-04'), (5, '2024-02-05'),
(6, '2024-02-06'), (7, '2024-02-07'), (8, '2024-02-08'),
(9, '2024-02-09');

-- Insert 45 order_items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1), (1, 3, 2), (2, 2, 1), (3, 5, 1),
(4, 2, 1), (4, 4, 1), (5, 3, 2), (6, 7, 1),
(7, 8, 2), (8, 6, 1), (9, 5, 1), (10, 1, 1),
(11, 3, 1), (12, 2, 1), (13, 4, 2), (14, 1, 1),
(15, 6, 1), (16, 7, 1), (17, 8, 1), (18, 9, 1),
(19, 10, 2), (20, 11, 1), (21, 12, 1), (22, 13, 1),
(23, 14, 3), (24, 15, 2), (25, 2, 2),
(6, 1, 1), (10, 5, 2), (15, 12, 1), (17, 4, 1),
(23, 9, 1), (24, 11, 1), (19, 14, 2), (22, 3, 2),
(13, 6, 2), (11, 1, 1), (7, 10, 1), (8, 13, 1),
(21, 2, 1), (25, 4, 2), (12, 14, 1), (9, 1, 1),
(18, 5, 1);

-- Query 2
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id
ORDER BY 
    total_orders DESC
LIMIT 5;

-- Query 3
SELECT 
    p.name AS product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM 
    products p
JOIN 
    order_items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;

-- Query 4
SELECT 
    p.name AS product_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM 
    products p
JOIN 
    order_items oi ON p.product_id = oi.product_id
GROUP BY 
    p.product_id
ORDER BY 
    total_revenue DESC;
