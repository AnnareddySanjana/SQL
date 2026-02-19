USE SCHOOLDATA;

Create TABLE Class(
  Class_id INT ,
  grade varchar(30),
  subject_id varchar(20)
  );
  
INSERT INTO Class VALUES ( 1, "first", "SUB101","stf301"), 
						 ( 2, "second", "SUB102","stf302"),
                         ( 3, "third", "SUB103","stf303"),
                         ( 4, "fourth", "SUB104","stf304"),
                         ( 5, "fifth", "SUB105","stf305");
select * from  class;    
truncate class;              
CREATE TABLE Subjects(
		subject_id varchar(20),
        subject_name varchar(20)
        );
        
INSERT INTO Subjects VALUES ("SUB101", "Robotics"),
							("SUB102", "Maths"),
                            ("SUB103", "History"),
                            ("SUB104", "Physics"),
                            ("SUB105", "English");
select * from  Subjects;  

CREATE TABLE STAFF(
       stf_id varchar(30) ,
       stf_fname varchar(50),
       stf_lname varchar(50)
       );

INSERT INTO STAFF VALUES ("stf301", "Sanjana", "Annareddy"),
                         ("stf302", "Nani","Annareddy"),
                         ("stf303", "Jack", "Jim"),
                         ("stf304", "Romeo", "Juliet"),
                         ("stf305", "Vishu", "Ramagouni");
					
select * from STAFF;

select grade
FROM class as cls JOIN Subjects as sub ON cls.subject_id = sub.subject_id
WHERE subject_name = "History";
-- if we have same subject id's from two diffrent grades, we will get those two grades in result using join 

select subject_name
From class JOIN subjects ON class.subject_id = subjects.subject_id
WHERE grade = "fourth";   

ALTER TABLE class ADD COLUMN stf_id INT;
ALTER TABLE class MODIFY stf_id varchar(60);

UPDATE class SET stf_id = "stf301" WHERE Class_id = 1;
UPDATE class SET stf_id = "stf302" WHERE Class_id = 2;
UPDATE class SET stf_id = "stf303" WHERE Class_id = 3;
UPDATE class SET stf_id = "stf304" WHERE Class_id = 4;
UPDATE class SET stf_id = "stf305" WHERE Class_id = 5;

SELECT COUNT(*) FROM class;



select distinct CONCAT(stf.stf_fname,' ',stf.stf_lname) AS Fullname
From class cls join subjects sub ON cls.subject_id = sub.subject_id
join staff stf on stf.stf_id = cls.stf_id
where sub.subject_name = "Robotics";