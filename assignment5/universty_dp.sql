-- Q1

CREATE DATABASE university_db

-- Q2
CREATE TABLE departments (
dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);


-- Q4

CREATE TABLE courses (
 course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR (50) NOT NULL,
    credits INT DEFAULT 3,
    dept_id INT ,
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE);


-- Q5
CREATE TABLE students (
student_id INT PRIMARY KEY AUTO_INCREMENT,
student_name VARCHAR (50) NOT NULL) ;

-- Q6
CREATE TABLE enrollments(
enrollment_id INT PRIMARY KEY AUTO_INCREMENT ,
student_id INT,
course_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE);


-- Q7
CREATE TABLE health_records(
record_id INT PRIMARY KEY AUTO_INCREMENT,
blood_group VARCHAR (50),
student_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE)


-- PART3

-- Q1
INSERT INTO departments (dept_name) VALUES(
"computer science"),
("mathematics"),
("physics");

-- Q2
ALTER TABLE courses;
INSERT INTO courses( course_name,
    credits,
    dept_id ) VALUES(
 "systems" , 4 ,1),
 ("algorithms",  3,1 ),
 ("calculus" , 4,2 ),
 ("quantum mechanics",5,3);
 
--  Q3
 ALTER TABLE students;
 INSERT INTO students(student_name) VALUES(
 "alice"),
     ("bob"),
    ( "charlie"),("samy"),("eva"
)
 
-- Q4
INSERT INTO enrollments (student_id ,course_id) VALUES
(1,1),
(1,2),
(2,1),
(3,2),
(3,3),
(4,3),
(4,4),
(5,NULL);


-- Q5
INSERT INTO health_records (blood_group,student_id)VALUES(
"A+",1),
("B+",2)
,("O-",3),
("AB+",4),
("A-",5)
 



-- PART4
-- Q1
SELECT students.student_name, health_records.blood_group
FROM students 
INNER JOIN health_records 
ON students.student_id = health_records.student_id;


-- Q2
SELECT students.student_name, health_records.blood_group, courses.course_name
FROM students 
INNER JOIN health_records  ON students.student_id = health_records.student_id
INNER JOIN enrollments  ON students.student_id = enrollments.student_id
INNER JOIN courses  ON enrollments.course_id = courses.course_id;

-- Q3
SELECT students.student_name, courses.course_name
FROM students 
LEFT JOIN enrollments  ON students.student_id = enrollments.student_id
LEFT JOIN courses  ON enrollments.course_id = courses.course_id;

-- Q4

SELECT courses.course_name, students.student_name
FROM enrollments 
RIGHT JOIN courses  ON enrollments.course_id = courses.course_id
LEFT JOIN students  ON enrollments.student_id = students.student_id;

-- Q5
DELETE FROM departments WHERE dept_name = 'mathematics';
-- يتم حذف قسم mathematics

-- يتم حذف كل الكورسات التابعة 

-- Q6

DELETE FROM students WHERE student_name = 'bob';

-- يتم حذف الطالب

-- يتم حذف تسجيلاته في enrollments

-- يتم حذف سجله الصحي في health_records

-- PART6
-- Q1
SELECT COUNT(*) AS total_students
FROM students;
-- Q2
SELECT AVG(credits) AS average_credits
FROM courses;
-- Q3
SELECT MAX(credits) AS highest_credit
FROM courses;
-- Q4
SELECT MIN(credits) AS lowest_credit
FROM courses;
-- Q5
SELECT COUNT(*) AS total_A_plus
FROM health_records
WHERE blood_group = 'A+';

