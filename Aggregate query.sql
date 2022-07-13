-- Aggregate functions
/*
1.count
2.sum
3.min
4.max
5.avg
6.group_concate
*/

 CREATE TABLE employee1 (
eid INT PRIMARY KEY,
fname VARCHAR(15),
lname VARCHAR(15),
salary DOUBLE
);

INSERT INTO employee1 VALUES(1,'mani','bharathi',25000),(2,'amsa','poorani',35000),
(3,'kala','devi',10000),(4,'ram','kumar',50000);
SELECT * FROM employee1;
-- count 
SELECT COUNT(*) FROM employee1;

INSERT INTO employee1 VALUES(5,'mani','bharathi',25000);
SELECT * FROM employee1;
SELECT COUNT(DISTINCT fname) FROM employee1;
SELECT COUNT(ALL lname ) FROM employee1;

-------------------------------------------------------------------------------------
-- sum

SELECT SUM(salary) FROM employee1;
-------------------------------------------------------------------------------------
-- min
SELECT MIN(salary) FROM employee1;
------------------------------------------------------------------------------------
-- max
SELECT MAX(salary) FROM employee1;
------------------------------------------------------------------------------------
-- avg
SELECT AVG(salary) FROM employee1;
------------------------------------------------------------------------------------
-- group_concat
SELECT GROUP_CONCAT(salary) FROM employee1;
