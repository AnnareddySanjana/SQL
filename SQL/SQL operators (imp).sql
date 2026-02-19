Create database SCHOOLDATA;
use schooldata;

Create TABLE SCHOOL(
	class INT,
    subject varchar(90),
    T_name varchar(50),
    T_id INT,
    T_salary INT,
    s_name varchar(50),
    s_id INT,
    s_fee int,
    PRIMARY KEY(s_id, T_id)
    );
    
INSERT INTO SCHOOL VALUES 
              (1, "Maths", "John", 101, 50000, "Jack", 201, 90000) ,
              (2, "Telugu", "Rosy", 102, 150000, "Jim", 202, 150000) ,
              (3, "English", "Dash", 103, 250000, "Tina", 203, 190000) ,
              (4, "Robotics", "Cillian", 104, 200000, "James", 204, 200000),
              (5, "Hindi", "Zander", 105, 250000, "Sunaina", 205, 250000);
		
              
              
Select * from SCHOOL;
TRUNCATE TABLE SCHOOL;

select class, subject From SCHOOL;
select * from SCHOOL where T_salary = 250000;
select * from SCHOOL where subject != "Maths";
select * from SCHOOL where subject <> "Maths";
select * from SCHOOL where T_salary < 250000;
select * from SCHOOL where T_salary > 100000;
select * from School order by T_salary;
select * from school order by T_salary desc;
select * from School where T_salary between 100000 and 200000 order by T_salary;
select * from School where subject NOT IN ("Maths", "English");
select * from School where subject IN ("Maths", "English");
select * from School where subject like "R%";
select * from School where subject like "%H";
select * from school where subject = "Maths" AND s_name = "Tina";
select * from school where subject = "Maths" AND s_name = "Jack";
select * from school where subject = "Maths" AND s_name = "nthg";
select * from school where subject = "Maths" or s_name = "Tina";
select * from school where subject = "Maths" or s_name = "Jack";
select * from school where subject = "Maths" AND s_name = "nthg";
select * from school where T_salary > 100000 or s_name = "Jack";
select * from school where T_salary > 100000 or s_name = "Tina";
select * from school where T_salary > 100000 AND s_name = "Jack";
select (5+3) TOTAl;
select (5-2) TOTAL;
select (5/2) TOTAL;
select (5*2) TOTAL;
select (5%2) TOTAL;
select T_salary from SCHOOL;
select distinct T_salary from school;
select T_salary from SCHOOL limit 3;
select * from SCHOOL limit 4;