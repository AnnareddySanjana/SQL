USE university;

select * from student;
select * from result;
select * from teacher;
select * from staff_table;

select student_name , 
		department,
        marks
FROM student Stu 
JOIN result On stu.student_id = result.student_id
JOIN teacher on teacher.school_id = stu.school_id
JOIN staff_table as stf on stf.staff_name = teacher.teacher_name
WHERE marks>70;

-- aggregate fucntions

-- 1)average
select avg(salary) as "avg_salary"
from staff_table where staff_type = "Teaching";

-- 2)sum

select sum(salary) as "total_amt"
from staff_table; 

select sum(salary) as "total_amt"
from staff_table where staff_type = "non-teaching";

select sum(salary) as "total_amt"
from staff_table where staff_type = "teaching";

-- 3)Minimum
select min(salary) as "least"
from staff_table;

select min(salary) as "least"
from staff_table where staff_type = "teaching";

select min(salary) as "least"
from staff_table where staff_type = "non-teaching";

-- 4)maximum
select max(salary) as "Highest"
from staff_table;

select max(salary) as "highest"
from staff_table where staff_type = "teaching";

select max(salary) as "highest"
from staff_table where staff_type = "non-teaching";
