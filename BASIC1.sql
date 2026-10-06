CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;
SELECT DATABASE();

CREATE TABLE Students(
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(100),
    Age TINYINT,
    Email VARCHAR(100),
    JoinDate DATE

);

SELECT * FROM Students;

INSERT INTO Students(Name, Age, Email, JoinDate)
VALUES
('Amit Gupta', 22, 'amit@email.com', '2025-02-20' ),
('Krish', 21, 'krish@email.com', '2007-01-15' );

ALTER TABLE Students ADD COLUMN City VARCHAR(50);
ALTER TABLE Students MODIFY Age SMALLINT;
ALTER TABLE Students CHANGE Email StudentEmail VARCHAR(100);

TRUNCATE TABLE Students;