Use SCHOOLDATA;

-- CASE
/*like if else statement */

select T_id, T_salary,
  CASE WHEN T_salary >= 200000 THEN "Too high"
     WHEN T_salary BETWEEN 100000 AND 200000 THEN "Average"
     WHEN T_salary <100000 THEN "Too low" 
  END AS Salary_range 
FROM SCHOOL 
Order by 2 desc; -- gives in descending order based on 2nd selected column -> T_salary 
