USE UNIVERSITY;

select stf.school_id ,count(1) as "No_of_staff"
From staff_table stf
GROUP BY stf.school_id 
Having count(1) = 2;

select stf.staff_type, count(1) as "school_with_staff"
from staff_table stf
GROUP BY stf.staff_type
having count(1) >1
order by staff_type;


select experience_years, count(1) as "no_of_staff"
from staff_table stf
GROUP by experience_years
having count(1) >1
order by experience_years desc;

select staff_name, staff_id from staff_table where experience_years>7;