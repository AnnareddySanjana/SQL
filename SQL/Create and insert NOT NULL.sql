CREATE DATABASE mydb;
SHOW DATABASES;
USE mydb;
CREATE TABLE student1(
   student_id varchar(10) 
   ,student_Fname varchar(50) NOT NULL
   ,student_lname varchar(50)
   ,student_age INT NOT NULL
   ,student_address varchar(6)
);
select * from student1;
INSERT INTO student1 VALUES (12220788, "Sanjana", "Annareddy", 21, 9967);
INSERT INTO studenT1 VALUES (1225689, "Nani", "Devdas", 21, 756986);
INSERT INTO student1 VALUES (12220788, NULL, "Parvathi", 21, 756987);
INSERT INTO studenT1 VALUES (1236789, "Romeo", "IDK", 22, null);
INSERT INTO studenT1 VALUES (1225689, "Juliet", "IDK", 21, 755986);


