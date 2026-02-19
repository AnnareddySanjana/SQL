CREATE DATABASE Practice_company;
USE Practice_company;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Department VALUES
(1, 'HR', 'Hyderabad'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi');


CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    age INT,
    gender CHAR(1),
    salary DECIMAL(10,2),
    dept_id INT,
    manager_id INT,
    city VARCHAR(50),
    join_date DATE,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Employee VALUES
(101, 'Ravi', 45, 'M', 75000, 2, NULL, 'Hyderabad', '2015-06-10'),
(102, 'Anita', 38, 'F', 68000, 2, 101, 'Bangalore', '2017-03-15'),
(103, 'Kiran', 29, 'M', 42000, 1, 101, 'Hyderabad', '2019-07-01'),
(104, 'Sneha', 50, 'F', 82000, 3, NULL, 'Mumbai', '2012-01-20'),
(105, 'Arjun', 32, 'M', 55000, 4, 104, 'Delhi', '2018-11-12'),
(106, 'Meena', 27, 'F', 39000, 1, 103, 'Hyderabad', '2021-09-05'),
(107, 'Vikram', 41, 'M', 61000, 3, 104, 'Mumbai', '2016-04-18');


CREATE TABLE Student (
    std_id INT PRIMARY KEY,
    std_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);


INSERT INTO Student VALUES
(1, 'Rahul', 20, 'Hyderabad', 85),
(2, 'Pooja', 22, 'Delhi', 72),
(3, 'Amit', 19, 'Mumbai', 90),
(4, 'Neha', 21, 'Bangalore', 66),
(5, 'Suresh', 23, 'Hyderabad', 58);


CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(12,2),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);


INSERT INTO Project VALUES
(201, 'AI System', 2, 500000),
(202, 'Payroll System', 1, 200000),
(203, 'Marketing App', 4, 300000),
(204, 'Finance Tracker', 3, 400000);

select * from department;
select * from employee;
select * from project;
select * from student;


ALTER TABLE student ADD COLUMN email varchar(50);

UPDATE student
set email = "1.email"
where std_id = "1";

UPDATE student
set email = "2.email"
where std_id = "2";

UPDATE student
set email = "3.email"
where std_id = "3";

UPDATE student
set email = "4.email"
where std_id = "4";

UPDATE student
set email = "5.email"
where std_id = "5";

ALTER TABLE student MODIFY city varchar(50) default "INDIA";

INSERT INTO STUDENT (std_id, std_name, age, marks, email) values ( 6, "sanju", 21,100, "6.email");
INSERT INTO STUDENT values ( 7, "Nani", 21 ,DEFAULT, 100, "7.email");

select city from student where std_id = "6";
select city from student where std_id = "3";
select city from student where std_id = "10"; -- no value will be retrived

ALTER table employee ADD CONSTRAINT CHECK (age >18);
ALTER table employee ADD CHECK (age >20);

ALTER TABLE employee add column phone_number INT UNIQUE;

ALTER TABLE student  RENAME column std_id to student_name ;
ALTER TABLE student  RENAME column student_name to  std_id ;
ALTER TABLE student  RENAME column std_name to student_name ;

ALTER TABLE project ADD column project_manager_id int;
alter table project add constraint foreign key (project_manager_id )references employee ( emp_id);