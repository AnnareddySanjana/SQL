USE mydb;
CREATE table Class(
	section varchar(10),
    subjectcode varchar(20) PRIMARY KEY
    );

 Create table child(
	student_id INT,
    student_name varchar(50),
    subject varchar(20),
    foreign key (subject) REFERENCES Class(subjectcode)
    );
    select * from Class;
    select * from child;
    
    INSERT INTO Class VALUES ("A", "201");
    INSERT INTO Class VALUES ("B", "202");
    INSERT INTO Class VALUES ("C", "203");
    INSERT INTO child VALUES (1, "Sanjana", 201);
    INSERT INTO child VALUES (1, "Sanjana", 201);