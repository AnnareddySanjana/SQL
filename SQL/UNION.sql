create database University;
use University;
select * from school;
select * from student;
select * from subject;
select * from teacher;
select * from result;
select * from staff_table;
select staff_type ,
	   staff_name,
	   experience_years,
       department
FROM staff_table as stf Join school scl ON stf.school_id = scl.school_id
where stf.staff_type = "Teaching"
AND scl.city IN ('Pune', 'Mumbai','Delhi')
UNION
select staff_type ,
	   staff_name,
	   experience_years,
       department
FROM staff_table as stf Join school scl ON stf.school_id = scl.school_id
where stf.staff_type = "Non-Teaching"
AND experience_years =5;