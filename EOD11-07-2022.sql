CREATE DATABASE Studentdatabase;
USE Studentdatabase;
CREATE TABLE student
(sid INT AUTO_INCREMENT PRIMARY KEY ,
sname VARCHAR(20) NOT NULL,
sage DATE NOT NULL);
INSERT INTO student(sname,sage) VALUES('amsapoorani','1993-03-08'),('mani','1994-10-23'),('vinoth','1987-09-25'),('nidharsana','2019-01-30');
SELECT * FROM student;
DESC student;
SELECT * FROM student WHERE sid=1;
SELECT * FROM student WHERE sid>=5 AND sage>'2019-01-01';
SELECT sname FROM student WHERE sid BETWEEN 2 AND 4;
SELECT sname FROM student WHERE sage BETWEEN '1993-01-01' AND '1994-01-01';
SELECT sname FROM student  ORDER BY sname ASC;
SELECT * FROM student ORDER BY sname DESC;
SELECT * FROM student WHERE sname LIKE 'a%';
SELECT sname FROM student WHERE sname LIKE '%h';
SELECT sname, COUNT(sname) FROM student WHERE sname LIKE '%a%';
SELECT sname FROM student WHERE sname LIKE '%a%';
SELECT sname FROM student WHERE sname LIKE 'a_%';
SELECT * FROM student WHERE sname IS NULL;
SELECT * FROM student WHERE sname IS NOT NULL;
INSERT INTO student(sname,sage) VALUES('amsapoorani','1993-03-08'),('mani','1994-10-23');
SELECT * FROM student;
SELECT DISTINCT sname,sage FROM student ;

