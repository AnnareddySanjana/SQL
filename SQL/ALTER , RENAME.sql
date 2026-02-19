Create database data;
Use data;
Create TABLE PG(
	room_no varchar(5),
    bedsharing INT,
    id INT
    
);
select * from PG;
INSERT INTO PG VALUES ("A201", 2, 789 );
INSERT INTO PG VALUES ("A202", 3, 987 );

ALTER TABLE PG DROP column bedsharing;
ALTER TABLE PG ADD PRIMARY KEY (room_no);
ALTER TABLE PG MODIFY room_no varchar(90);
ALTER TABLE PG RENAME COLUMN id to hostel_id;
ALTER TABLE PG RENAME HOSTEL;
select * from HOSTEL;

ALTER TABLE HOSTEL ADD UNIQUE (hostel_id);
