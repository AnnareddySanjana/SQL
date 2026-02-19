CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'HR', 'Delhi'),
(2, 'Finance', 'Mumbai'),
(3, 'IT', 'Bangalore'),
(4, 'Marketing', 'Chennai'),
(5, 'Sales', 'Hyderabad'),
(6, 'Admin', 'Pune'),
(7, 'Legal', 'Kolkata'),
(8, 'R&D', 'Noida'),
(9, 'Support', 'Ahmedabad'),
(10, 'Operations', 'Jaipur'),
(11, 'Procurement', 'Lucknow'),
(12, 'Training', 'Surat'),
(13, 'Security', 'Bhopal'),
(14, 'Logistics', 'Indore'),
(15, 'Design', 'Patna'),
(16, 'QA', 'Nagpur'),
(17, 'Analytics', 'Chandigarh'),
(18, 'Product', 'Goa'),
(19, 'Engineering', 'Coimbatore'),
(20, 'Compliance', 'Ranchi');

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_role VARCHAR(50),
    salary INT,
    dept_id INT
);

INSERT INTO Employees VALUES
(101, 'Amit', 'Manager', 75000, 1),
(102, 'Sneha', 'Executive', 50000, 2),
(103, 'Rahul', 'Developer', 80000, 3),
(104, 'Priya', 'Analyst', 60000, 3),
(105, 'Karan', 'Sales Rep', 45000, 5),
(106, 'Neha', 'HR Executive', 48000, 1),
(107, 'Vikram', 'Marketing Lead', 70000, 4),
(108, 'Pooja', 'Designer', 55000, 15),
(109, 'Rohan', 'Engineer', 90000, 19),
(110, 'Anjali', 'QA Tester', 52000, 16),
(111, 'Suresh', 'Admin Officer', 40000, 6),
(112, 'Divya', 'Support Staff', 38000, 9),
(113, 'Manoj', 'Trainer', 47000, 12),
(114, 'Kavya', 'Legal Advisor', 65000, 7),
(115, 'Arjun', 'Product Manager', 85000, 18),
(116, 'Meena', 'Security Guard', 30000, 13),
(117, 'Deepak', 'Operations Head', 95000, 10),
(118, 'Nisha', 'Procurement Officer', 52000, 11),
(119, 'Tarun', 'Engineer', 88000, 19),
(120, 'Shreya', 'Compliance Officer', 60000, 20),
(121, 'Lokesh', 'Consultant', 70000, 25),
(122, 'Ritu', 'Intern', 20000, NULL),
(123, 'Aditya', 'Analyst', 61000, 30),
(124, 'Simran', 'Developer', 82000, 3),
(125, 'Varun', 'Executive', 48000, 2);


select * from departments;
select * from employees;



-- inner join

select dept_name, salary
from employees as emp 
JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 2 desc;

select count(1)
from employees as emp 
JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1;


select *
from employees as emp 
INNER JOIN departments as dpt ON emp.dept_id = dpt.dept_id   
order by 1;
-- Join == Inner join ( both works same)..............


-- outer join.....
-- left join -> fetches all data from left table and the matchiing data from right table..........
select dept_name, salary
from employees as emp 
left JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1 desc;


select count(1)
from employees as emp 
left JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1;


-- right join......... 
select count(1)
from employees as emp 
right JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1;

select dept_name, salary
from employees as emp 
right JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 2 desc;

-- full outer join
select dept_name, salary
from employees as emp 
FULL OUTER JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1,2 desc;      -- in mysql workbench, full outer join command will not work 

-- for full outer join in mysql workbench ...do union of right join and left join

select dept_name, salary
from employees as emp 
left JOIN departments as dpt ON emp.dept_id = dpt.dept_id
UNION
select dept_name, salary
from employees as emp 
right JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1 desc;

select count(1)
from employees as emp 
left JOIN departments as dpt ON emp.dept_id = dpt.dept_id
UNION
select count(1)
from employees as emp 
right JOIN departments as dpt ON emp.dept_id = dpt.dept_id
order by 1 desc;