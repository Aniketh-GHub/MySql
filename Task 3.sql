-- Operators
create database operations;
use operations;
create table numbers(
a int,
b int
);
insert into numbers(a,b)values
(10,3),
(15,7),
(25,5),
(30,15),
(52,64),
(65,25),
(60,30),
(80,90),
(58,32),
(98,63),
(3,1),
(7,51),
(5,52),
(46,25),
(52,56),
(3,6),
(9,8),
(85,20),
(100,200),
(2000,10000);
-- Arithmetic
Select 
a,
b,
a+b AS sum_result,
a-b AS difference_result,
a*b AS product_result,
a/b AS division_result,
a%b AS modulus_result,
power(a, b) AS exponential,   
floor(a / b) AS floor_division
From 
numbers;
create table products (
    product_id INT,
    product_name varchar(30),
    price INT,
    stock_quantity int
);
insert into products (product_id,product_name,price,stock_quantity)
values
(1,'rice',30,40),
(2,'Dal',96,47),
(3,'fruit',70,30),
(4, 'wheat', 50, 60),
(5, 'sugar', 25, 55),
(6, 'salt', 20, 35),
(7, 'oil', 80, 45),
(8, 'bread', 15, 25),
(9, 'milk', 40, 50),
(10, 'cheese', 60, 20),
(11, 'butter', 90, 40),
(12, 'eggs', 70, 55),
(13, 'chicken', 120, 60),
(14, 'fish', 110, 65),
(15, 'meat', 130, 70),
(16, 'vegetables', 45, 30),
(17, 'fruits', 75, 25),
(18, 'pasta', 55, 40),
(19, 'noodles', 35, 50),
(20, 'spices', 65, 20);
select * from products;
#Equal to (=)
SELECT * FROM products WHERE price = 30;

#Not equal to (<> or !=):
SELECT * FROM products WHERE product_id != 2;

#Less than (<):
SELECT * FROM products WHERE price < 90;

#Greater than (>):
SELECT * FROM products WHERE stock_quantity > 40;

#Less than or equal to (<=):
SELECT * FROM products WHERE price <= 25;

#Greater than or equal to (>=):
SELECT * FROM products WHERE stock_quantity >= 50;
-- Logical Operators
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT,
    department VARCHAR(50)
);
INSERT INTO employees VALUES (1, 'John', 'Doe', 50000, 'Sales');
INSERT INTO employees VALUES (2, 'Jane', 'Smith', 60000, 'Marketing');
INSERT INTO employees VALUES (3, 'Bob', 'Johnson', 55000, 'Sales');
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000, 'Finance');
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000, 'Marketing');
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000, 'Sales');
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000, 'Finance');
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000, 'Sales');
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000, 'Marketing');
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000, 'Sales');
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000, 'Finance');
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000, 'Marketing');
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000, 'Sales');
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000, 'Finance');
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000, 'Marketing');
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000, 'Sales');
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000, 'Finance');
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000, 'Sales');
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000, 'Marketing');
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000, 'Finance');
-- AND Operator:
-- Retrieve employees from the Sales department with a salary greater than 50000
SELECT * FROM employees
WHERE department = 'Sales' AND salary > 50000;

-- OR Operator:
-- Retrieve employees from the Sales department or with a salary greater than 60000
SELECT * FROM employees
WHERE department = 'Sales' OR salary > 60000;

-- NOT Operator:
-- Retrieve employees not from the Marketing department
SELECT * FROM employees
WHERE NOT department = 'Marketing';
#----- Concatenation Operator:-----------#
-- Create a database
CREATE DATABASE IF NOT EXISTS example_database;
USE example_database;
-- Create a table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT
);
-- Insert some data
INSERT INTO employees VALUES (1, 'John', 'Dev', 50000);
INSERT INTO employees VALUES (2, 'Sai', 'Smith', 60000);
INSERT INTO employees VALUES (3, 'Bob', 'John', 55000);
INSERT INTO employees VALUES (4, 'Alice', 'Williams', 70000);
INSERT INTO employees VALUES (5, 'Charlie', 'Brown', 48000);
INSERT INTO employees VALUES (6, 'David', 'Clark', 65000);
INSERT INTO employees VALUES (7, 'Emma', 'Davis', 72000);
INSERT INTO employees VALUES (8, 'Frank', 'Miller', 52000);
INSERT INTO employees VALUES (9, 'Grace', 'Taylor', 58000);
INSERT INTO employees VALUES (10, 'Hannah', 'Wilson', 63000);
INSERT INTO employees VALUES (11, 'Isaac', 'Moore', 71000);
INSERT INTO employees VALUES (12, 'Judy', 'Jackson', 56000);
INSERT INTO employees VALUES (13, 'Kevin', 'White', 54000);
INSERT INTO employees VALUES (14, 'Linda', 'Harris', 69000);
INSERT INTO employees VALUES (15, 'Michael', 'Martin', 53000);
INSERT INTO employees VALUES (16, 'Nancy', 'Thompson', 62000);
INSERT INTO employees VALUES (17, 'Oliver', 'Garcia', 64000);
INSERT INTO employees VALUES (18, 'Patricia', 'Martinez', 51000);
INSERT INTO employees VALUES (19, 'Quincy', 'Robinson', 59000);
INSERT INTO employees VALUES (20, 'Rachel', 'Walker', 67000);
 Concatenation using ||
SELECT employee_id, first_name || ' ' || last_name AS full_name
FROM employees;

-- Concatenation using CONCAT()
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

#-------------- LIKE Operator ------------#

-- Create a table
CREATE TABLE IF NOT EXISTS ele_products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);
INSERT INTO ele_products VALUES (1, 'Mobile Phone');
INSERT INTO ele_products VALUES (2, 'Laptop');
INSERT INTO ele_products VALUES (3, 'Tablet');
INSERT INTO ele_products VALUES (4, 'Smartwatch');
INSERT INTO ele_products VALUES (5, 'Desktop Computer');
INSERT INTO ele_products VALUES (6, 'Gaming Console');
INSERT INTO ele_products VALUES (7, 'Smart TV');
INSERT INTO ele_products VALUES (8, 'Bluetooth Speaker');
INSERT INTO ele_products VALUES (9, 'Wireless Earbuds');
INSERT INTO ele_products VALUES (10, 'Smart Home Assistant');
INSERT INTO ele_products VALUES (11, 'Digital Camera');
INSERT INTO ele_products VALUES (12, 'Printer');
INSERT INTO ele_products VALUES (13, 'Monitor');
INSERT INTO ele_products VALUES (14, 'External Hard Drive');
INSERT INTO ele_products VALUES (15, 'Router');
INSERT INTO ele_products VALUES (16, 'Keyboard');
INSERT INTO ele_products VALUES (17, 'Mouse');
INSERT INTO ele_products VALUES (18, 'Smart Light Bulb');
INSERT INTO ele_products VALUES (19, 'Fitness Tracker');
INSERT INTO ele_products VALUES (20, 'VR Headset');
-- Use LIKE to find products with names starting with 'Mobile'
SELECT * FROM ele_products
WHERE product_name LIKE 'Mobile%';

-- Find products with names containing 'Phone'
SELECT * FROM ele_products
WHERE product_name LIKE '%Phone%';

-- Find products with names ending with 'Tablet'
SELECT * FROM ele_products
WHERE product_name LIKE '%Tablet';
#------------- IN Operator: ---------------#
-- Create a departments table
-- Create a table
CREATE TABLE IF NOT EXISTS employees_dep (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);
INSERT INTO employees_dep VALUES (1, 'John', 'Sin', 'Sales');
INSERT INTO employees_dep VALUES (2, 'Sri', 'Smith', 'Marketing');
INSERT INTO employees_dep VALUES (3, 'Bob', 'John', 'Sales');
INSERT INTO employees_dep VALUES (4, 'Ali', 'Williams', 'Finance');
INSERT INTO employees_dep VALUES (5, 'Char', 'Brown', 'Marketing');
INSERT INTO employees_dep VALUES (6, 'David', 'Clark', 'Sales');
INSERT INTO employees_dep VALUES (7, 'Emma', 'Davis', 'Finance');
INSERT INTO employees_dep VALUES (8, 'Frank', 'Miller', 'Sales');
INSERT INTO employees_dep VALUES (9, 'Grace', 'Taylor', 'Marketing');
INSERT INTO employees_dep VALUES (10, 'Hannah', 'Wilson', 'Sales');
INSERT INTO employees_dep VALUES (11, 'Isaac', 'Moore', 'Finance');
INSERT INTO employees_dep VALUES (12, 'Judy', 'Jackson', 'Marketing');
INSERT INTO employees_dep VALUES (13, 'Kevin', 'White', 'Sales');
INSERT INTO employees_dep VALUES (14, 'Linda', 'Harris', 'Finance');
INSERT INTO employees_dep VALUES (15, 'Michael', 'Martin', 'Marketing');
INSERT INTO employees_dep VALUES (16, 'Nancy', 'Thompson', 'Sales');
INSERT INTO employees_dep VALUES (17, 'Oliver', 'Garcia', 'Finance');
INSERT INTO employees_dep VALUES (18, 'Patricia', 'Martinez', 'Sales');
INSERT INTO employees_dep VALUES (19, 'Quincy', 'Robinson', 'Marketing');
INSERT INTO employees_dep VALUES (20, 'Rachel', 'Walker', 'Finance');
Use IN to find employees in 'Sales' or 'Marketing'
SELECT * FROM employees_dep
WHERE department IN ('Sales', 'Marketing');
#----------------- IS NULL / IS NOT NULL -------------#
-- Create a table
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
INSERT INTO students VALUES (1, 'Tarak', 'Ram');
INSERT INTO students VALUES (2, 'Sai', NULL);
INSERT INTO students VALUES (3, 'Bob', 'John');
INSERT INTO students VALUES (4, 'Kumar', NULL);
INSERT INTO students VALUES (5, 'Alice', 'Williams');
INSERT INTO students VALUES (6, 'David', 'Clark');
INSERT INTO students VALUES (7, 'Emma', NULL);
INSERT INTO students VALUES (8, 'Frank', 'Miller');
INSERT INTO students VALUES (9, 'Grace', 'Taylor');
INSERT INTO students VALUES (10, 'Hannah', NULL);
INSERT INTO students VALUES (11, 'Isaac', 'Moore');
INSERT INTO students VALUES (12, 'Judy', NULL);
INSERT INTO students VALUES (13, 'Kevin', 'White');
INSERT INTO students VALUES (14, 'Linda', 'Harris');
INSERT INTO students VALUES (15, 'Michael', NULL);
INSERT INTO students VALUES (16, 'Nancy', 'Thompson');
INSERT INTO students VALUES (17, 'Oliver', NULL);
INSERT INTO students VALUES (18, 'Patricia', 'Martinez');
INSERT INTO students VALUES (19, 'Quincy', 'Robinson');
INSERT INTO students VALUES (20, 'Rachel', 'Walker');
-- Find students with a null last_name
SELECT * FROM students WHERE last_name IS NULL;
-- Find students with a non-null last_name
SELECT * FROM students
WHERE last_name IS NOT NULL;
#------------- BETWEEN Operator --------------#
-- Create a table
CREATE TABLE IF NOT EXISTS products_val (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);
INSERT INTO products_val VALUES (1, 'Laptop', 800.00);
INSERT INTO products_val VALUES (2, 'Smartphone', 200.00);
INSERT INTO products_val VALUES (3, 'Tablet', 120.00);
INSERT INTO products_val VALUES (4, 'Headphones', 60.00);
INSERT INTO products_val VALUES (5, 'Camera', 150.00);
INSERT INTO products_val VALUES (6, 'Smartwatch', 90.00);
INSERT INTO products_val VALUES (7, 'Bluetooth Speaker', 45.00);
INSERT INTO products_val VALUES (8, 'Printer', 130.00);
INSERT INTO products_val VALUES (9, 'Monitor', 250.00);
INSERT INTO products_val VALUES (10, 'Keyboard', 30.00);
INSERT INTO products_val VALUES (11, 'Mouse', 25.00);
INSERT INTO products_val VALUES (12, 'Router', 70.00);
INSERT INTO products_val VALUES (13, 'External Hard Drive', 100.00);
INSERT INTO products_val VALUES (14, 'Gaming Console', 350.00);
INSERT INTO products_val VALUES (15, 'Digital Camera', 200.00);
INSERT INTO products_val VALUES (16, 'VR Headset', 400.00);
INSERT INTO products_val VALUES (17, 'Webcam', 80.00);
INSERT INTO products_val VALUES (18, 'USB Flash Drive', 20.00);
INSERT INTO products_val VALUES (19, 'Wireless Charger', 55.00);
INSERT INTO products_val VALUES (20, 'Smart Home Assistant', 120.00);
-- Find products with prices between $50 and $100
SELECT * FROM products_val WHERE price BETWEEN 50.00 AND 100.00;
-- Find products with prices outside the range $50 to $100
SELECT * FROM products_val WHERE price NOT BETWEEN 50.00 AND 100.00;