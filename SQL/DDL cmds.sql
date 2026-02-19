CREATE DATABASE mydb;
SHOW DATABASES;
USE mydb;
CREATE TABLE student3(
   student_id varchar(100) 
   ,student_Fname varchar(50) NOT NULL 
   ,student_lname varchar(50)
   ,student_age INT NOT NULL
   ,student_address varchar(60)
   ,student_gender varchar(1) CHECK (student_gender IN ('M', 'f'))
   
);
select * from student3;
INSERT INTO student3 VALUES (125, "Sanjana", "Annareddy", 21, 459967, "F");
COMMIT;
INSERT INTO student3 VALUES (1, "Nani", "Devdas", 21, 756986,"M");
INSERT INTO student3 VALUES (44, "Devdas", "Parvathi", 21, 756987, "M");
INSERT INTO student3 VALUES (58, "Romeo", "IDK", 22, 451263, "M");
INSERT INTO student3 VALUES (19, "Juliet", "IDK", 21, 755986, "F");

SHOW COLUMNS FROM student3;
ALTER TABLE student3 ADD PRIMARY KEY (student_id);

UPDATE student3
Set student_address = "85296"
WHERE student_id = "44";

ALTER TABLE student3 MODIFY student_id INT NOT NULL;
DELETE FROM student3 WHERE student_id = 58;
DELETE FROM student3 WHERE student_id = "1";


Create TABLE City(
	Pin INT PRIMARY KEY,
    name varchar(50)
    );
INSERT INTO city VALUES (590, "hyd");
SELECT * FROM City;
UPDATE city set name = "Mumbai" WHERE Pin = 590;
    
Create TABLE State(
	Pin INT ,
    name varchar(50) PRIMARY KEY
    );
INSERT INTO State VALUES (590, "hyd");
SELECT * FROM state;
UPDATE state set Pin = "102" WHERE name  = "hyd";

DROP TABLE state;
TRUNCATE TABLE CIty;