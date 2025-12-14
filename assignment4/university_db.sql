CREATE DATABASE university_db

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(50) NOT NULL,
email VARCHAR (100) UNIQUE,
age INT CHECK (age >=18),
registration_date DATE,
registration_time TIME,
created_at DATETIME);


INSERT INTO students (full_name,
email,
age ,
registration_date ,
registration_time ,
created_at )VALUES (
    "Ahmad","Ahmad@gmail.com",19,"2025-10-12","10:15",NOW()
)

INSERT INTO students (full_name,
email,
age ,
registration_date ,
registration_time ,
created_at )VALUES (
    "Ahmad","Ahmad@gmail.com",19,"2025-10-12","10:15",NOW()
),
("salem","salem@gmail.com",19,"2025-12-12","11:17",NOW()),
("Mazen","mazen@gmail.com",19,"2025-12-1","1:17",NOW())