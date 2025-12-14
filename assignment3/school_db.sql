CREATE DATABASE school_db;

CREATE TABLE students_table (
student_id INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    grade VARCHAR(50),
    city  VARCHAR(100)
);


INSERT INTO students_table VALUES(
    1,"Ahmad","Ahmad",17,"A","Beirut"),
    (2,"sara","khatib",18,"B","Tripoli"),
   ( 3,"Hassan","Zein",17,"A","Sidon"),
   (4,"Mariam","Ata",19,"C","Beirut"),
   (5,"Khaled","Najjar",16,"B","Tyre"),
   (6,"Reem","Salem",18,"A","Tripoli"),
   (7,"Youssef","Hany",17,"C","Sidon"),(
    8,"Hiba","Zein",20,"B","Beirut"
   ),
   (9,"Fadi","Hashem",16,"A","Tyre"),
   (10,"Layla","Hasssan",17,"B","Tripoli")


   SELECT * FROM `students_table` WHERE 1;

   SELECT first_name,city FROM students_table;

   SELECT * FROM `students_table` WHERE grade="B";

SELECT * FROM `students_table` WHERE city!="Beirut";

SELECT * FROM `students_table` WHERE age>17;

SELECT * FROM `students_table` WHERE age>=18;

SELECT * FROM `students_table` WHERE student_id<5;

SELECT * FROM `students_table` WHERE age<=16;

SELECT * FROM `students_table` WHERE city="Null";

SELECT * FROM `students_table` WHERE city!="Null";

SELECT * FROM `students_table` WHERE age BETWEEN "17" AND "19";

SELECT * FROM `students_table` WHERE age >17 AND grade="A";

SELECT * FROM `students_table` WHERE city="Beirut" OR city="Tripoli"

UPDATE `students_table`  SET`grade`="A" WHERE student_id=4


UPDATE `students_table`  SET`city`="Beirut" WHERE city="Tripoli"

DELETE FROM `students_table` WHERE student_id=10

DELETE FROM `students_table` WHERE age<17