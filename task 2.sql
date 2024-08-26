create database school;
use school;
create table students(
id int auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
dob DATE,
Gender varchar(10),
grade int
);
show tables;
select *from students;
insert into students(first_name,last_name,dob,gender,grade)
values
('John','Doe','2010-05-12','Male',7),
('Emily', 'Smith', '2011-03-22', 'Female', 6),
('Michael', 'Johnson', '2009-08-15', 'Male', 8),
('Sarah', 'Brown', '2012-11-03', 'Female', 5),
('David', 'Williams', '2010-01-27', 'Male', 7),
('Jessica', 'Davis', '2011-09-10', 'Female', NULL),
('Matthew', 'Martinez', '2012-06-05', 'Male', 5),
('Ashley', 'Wilson', '2013-02-14', 'Female', 4),
('Joshua', 'Anderson', '2008-07-21', 'Male', 9),
('Olivia', 'Taylor', '2011-12-19', 'Female', 6),
('Daniel', 'Thomas', '2010-04-30', 'Male', NULL),
('Sophia', 'Moore', '2012-09-25', 'Female', 5),
('Andrew', 'Jackson', '2013-11-11', 'Male', 4),
('Isabella', 'White', '2010-03-08', 'Female', 7),
('Jacob', 'Harris', '2011-07-17', 'Male', NULL),
('Madison', 'Martin', '2012-01-30', 'Female', 5),
('Ethan', 'Thompson', '2009-10-02', 'Male', 8),
('Ava', 'Garcia', '2013-03-22', 'Female', 4),
('Liam', 'Martinez', '2010-11-18', 'Male', NULL),
('William', 'Robinson', '2011-05-29', 'Male', NULL);
select *from students;
select *from students where grade is null;
UPDATE students SET grade = 6 WHERE id = 6;
UPDATE students SET grade = 7 WHERE id = 11;
UPDATE students SET grade = 6 WHERE id = 15;
UPDATE students SET grade = 6 WHERE id = 19;
UPDATE students SET grade = 6 WHERE id = 20;
select*from students;
alter table students add section varchar(5);
select *from students;
alter table students add email varchar(50);
select *from students;
UPDATE students SET section = 'A', email = 'john.doe@example.com' WHERE id = 1;
UPDATE students SET section = 'B', email = 'emily.smith@example.com' WHERE id = 2;
UPDATE students SET section = 'C', email = 'michael.johnson@example.com' WHERE id = 3;
UPDATE students SET section = 'A', email = 'sarah.brown@example.com' WHERE id = 4;
UPDATE students SET section = 'B', email = 'david.williams@example.com' WHERE id = 5;
UPDATE students SET section = 'C', email = 'jessica.davis@example.com' WHERE id = 6;
UPDATE students SET section = 'A', email = 'matthew.martinez@example.com' WHERE id = 7;
UPDATE students SET section = 'B', email = 'ashley.wilson@example.com' WHERE id = 8;
UPDATE students SET section = 'C', email = 'joshua.anderson@example.com' WHERE id = 9;
UPDATE students SET section = 'A', email = 'olivia.taylor@example.com' WHERE id = 10;
UPDATE students SET section = 'B', email = 'daniel.thomas@example.com' WHERE id = 11;
UPDATE students SET section = 'C', email = 'sophia.moore@example.com' WHERE id = 12;
UPDATE students SET section = 'A', email = 'andrew.jackson@example.com' WHERE id = 13;
UPDATE students SET section = 'B', email = 'isabella.white@example.com' WHERE id = 14;
UPDATE students SET section = 'C', email = 'jacob.harris@example.com' WHERE id = 15;
UPDATE students SET section = 'A', email = 'madison.martin@example.com' WHERE id = 16;
UPDATE students SET section = 'B', email = 'ethan.thompson@example.com' WHERE id = 17;
UPDATE students SET section = 'C', email = 'ava.garcia@example.com' WHERE id = 18;
UPDATE students SET section = 'A', email = 'liam.martinez@example.com' WHERE id = 19;
UPDATE students SET section = 'B', email = 'william.robinson@example.com' WHERE id = 20;
select *from students;