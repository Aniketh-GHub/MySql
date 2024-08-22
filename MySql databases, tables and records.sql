create database workplace;
use workplace;
create table professional(
id int primary key,
name varchar(20),
salary decimal(10,2)
);
INSERT INTO professional (id,name, salary)
VALUES
    (1,'Alice Johnson', '50000'),
    (2,'Bob Smith', '60000'),
    (3,'Charlie Brown', '70000');
CREATE DATABASE db2;
CREATE DATABASE db3;
CREATE DATABASE db4;
CREATE DATABASE db5;
CREATE DATABASE db6;
CREATE DATABASE db7;
CREATE DATABASE db8;
CREATE DATABASE db9;
CREATE DATABASE db10;
USE db2;
CREATE TABLE emp_data (
    id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50)
);

INSERT INTO emp_data (first_name, last_name, position)
VALUES
    ('John', 'Doe', 'Software Engineer'),
    ('Jane', 'Smith', 'Data Scientist'),
    ('Emily', 'Johnson', 'Product Manager'),
    ('Michael', 'Brown', 'UX Designer'),
    ('Sarah', 'Davis', 'Marketing Manager'),
    ('James', 'Wilson', 'Sales Representative'),
    ('Linda', 'Taylor', 'HR Specialist'),
    ('David', 'Anderson', 'Accountant'),
    ('Laura', 'Thomas', 'Administrative Assistant'),
    ('Robert', 'Jackson', 'Systems Analyst');
    USE db3;
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_name, order_date, total_amount) VALUES
    ('Alice Johnson', '2024-01-10', 350.00),
    ('Bob Smith', '2024-01-15', 1200.00),
    ('Carol Davis', '2024-01-20', 450.00),
    ('David Brown', '2024-01-25', 800.00),
    ('Eve Clark', '2024-01-30', 620.00),
    ('Frank Wilson', '2024-02-05', 150.00),
    ('Grace Lewis', '2024-02-10', 300.00),
    ('Hannah Adams', '2024-02-15', 200.00),
    ('Ivy Scott', '2024-02-20', 500.00),
    ('Jack Martin', '2024-02-25', 700.00);

-- For db4
USE db4;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    major VARCHAR(50),
    graduation_year INT
);

INSERT INTO students (name, major, graduation_year) VALUES
    ('Michael Carter', 'Computer Science', 2024),
    ('Sarah Lee', 'Electrical Engineering', 2024),
    ('James King', 'Mechanical Engineering', 2025),
    ('Emily Martinez', 'Civil Engineering', 2023),
    ('David Taylor', 'Biotechnology', 2024),
    ('Laura Wilson', 'Physics', 2023),
    ('Robert Brown', 'Mathematics', 2025),
    ('Sophia Johnson', 'Chemistry', 2024),
    ('Daniel Scott', 'Environmental Science', 2024),
    ('Chloe Anderson', 'Economics', 2025);

-- For db5
USE db5;
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(50)
);

INSERT INTO books (title, author, genre) VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction'),
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction'),
    ('1984', 'George Orwell', 'Dystopian'),
    ('Moby Dick', 'Herman Melville', 'Adventure'),
    ('Pride and Prejudice', 'Jane Austen', 'Romance'),
    ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction'),
    ('Brave New World', 'Aldous Huxley', 'Dystopian'),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy'),
    ('War and Peace', 'Leo Tolstoy', 'Historical'),
    ('The Odyssey', 'Homer', 'Epic');

-- For db6
USE db6;
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (name, department, salary) VALUES
    ('Jack Wilson', 'HR', 50000.00),
    ('Olivia Martin', 'Marketing', 55000.00),
    ('Noah Clark', 'IT', 60000.00),
    ('Emma Davis', 'Finance', 65000.00),
    ('Liam Taylor', 'Sales', 52000.00),
    ('Sophia White', 'Operations', 58000.00),
    ('Mason Brown', 'Customer Support', 45000.00),
    ('Ava Johnson', 'Legal', 70000.00),
    ('Ethan Lewis', 'Product Management', 62000.00),
    ('Isabella Walker', 'Research', 57000.00);

-- For db7
USE db7;
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

INSERT INTO projects (project_name, start_date, end_date) VALUES
    ('Project Alpha', '2024-03-01', '2024-09-30'),
    ('Project Beta', '2024-04-15', '2024-12-15'),
    ('Project Gamma', '2024-02-01', '2024-08-01'),
    ('Project Delta', '2024-06-01', '2025-01-01'),
    ('Project Epsilon', '2024-05-01', '2024-11-01'),
    ('Project Zeta', '2024-07-01', '2024-12-01'),
    ('Project Eta', '2024-08-01', '2025-02-01'),
    ('Project Theta', '2024-09-01', '2025-03-01'),
    ('Project Iota', '2024-10-01', '2025-04-01'),
    ('Project Kappa', '2024-11-01', '2025-05-01');

-- For db8
USE db8;
CREATE TABLE inventory (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100),
    quantity INT,
    location VARCHAR(50)
);

INSERT INTO inventory (item_name, quantity, location) VALUES
    ('Monitor', 50, 'Warehouse A'),
    ('Keyboard', 200, 'Warehouse B'),
    ('Mouse', 150, 'Warehouse A'),
    ('Printer', 20, 'Warehouse C'),
    ('Desk Chair', 30, 'Warehouse B'),
    ('Laptop', 75, 'Warehouse A'),
    ('Webcam', 40, 'Warehouse C'),
    ('External Hard Drive', 60, 'Warehouse A'),
    ('Docking Station', 25, 'Warehouse B'),
    ('Speakers', 80, 'Warehouse C');

-- For db9
USE db9;
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    credits INT
);

INSERT INTO courses (course_name, instructor, credits) VALUES
    ('Introduction to Programming', 'Dr. Alice Green', 3),
    ('Data Structures', 'Prof. Bob White', 4),
    ('Database Systems', 'Dr. Carol Black', 3),
    ('Operating Systems', 'Prof. Dave Blue', 3),
    ('Software Engineering', 'Dr. Eva Red', 4),
    ('Computer Networks', 'Prof. Frank Gray', 3),
    ('Artificial Intelligence', 'Dr. Grace Yellow', 4),
    ('Machine Learning', 'Prof. Henry Brown', 4),
    ('Cybersecurity', 'Dr. Ivy Orange', 3),
    ('Web Development', 'Prof. Jack Pink', 3);

-- For db10
USE db10;
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    product_id INT,
    quantity_sold INT,
    total_amount DECIMAL(10, 2)
);

INSERT INTO sales (sale_date, product_id, quantity_sold, total_amount) VALUES
    ('2024-06-01', 1, 10, 12000.00),
    ('2024-06-02', 2, 5, 4000.00),
    ('2024-06-03', 3, 20, 3000.00),
    ('2024-06-04', 4, 15, 1350.00),
    ('2024-06-05', 5, 30, 1800.00),
    ('2024-06-06', 6, 7, 1750.00),
    ('2024-06-07', 7, 25, 750.00),
    ('2024-06-08', 8, 12, 2400.00),
    ('2024-06-09', 9, 8, 800.00),
    ('2024-06-10', 10, 10, 1200.00);