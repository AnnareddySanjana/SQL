CREATE DATABASE mydb;
SHOW DATABASES;
USE mydb;
CREATE TABLE student2(
   student_id varchar(10) 
   ,student_Fname varchar(50) NOT NULL
   ,student_lname varchar(50)
   ,student_age INT NOT NULL
   ,student_address varchar(6)
   ,student_gender varchar(95) CHECK (student_gender IN ('M', 'f'))
);
select * from student2;
INSERT INTO student2 VALUES (12220788, "Sanjana", "Annareddy", 21, 459967, "F");
INSERT INTO studenT2 VALUES (1225689, "Nani", "Devdas", 21, 756986,"M");
INSERT INTO student2 VALUES (12220788, "Devdas", "Parvathi", 21, 756987, "M");
INSERT INTO studenT2 VALUES (1236789, "Romeo", "IDK", 22, 451263, "M");
INSERT INTO studenT2 VALUES (1225689, "Juliet", "IDK", 21, 755986, "F");


