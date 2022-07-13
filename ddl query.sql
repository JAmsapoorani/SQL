-- DDL (data definition language )
/*
1.create 
2.drop
3.alter
4.truncate
5.comment
6.rename
*/
CREATE DATABASE itorizon;
USE itorizon;
CREATE TABLE employee
(eid INT AUTO_INCREMENT PRIMARY KEY,
ename VARCHAR(20) UNIQUE,
department ENUM('R&D','ORACLE','DEVOPS','HR','OTM','SERVICE'),
salary DOUBLE NOT NULL,
companyaddress VARCHAR(50) DEFAULT 'hoodi circle,bangalore'
);

CREATE TABLE employee1
(eid INT AUTO_INCREMENT PRIMARY KEY,
ename VARCHAR(20) UNIQUE,
department ENUM('R&D','ORACLE','DEVOPS','HR','OTM','SERVICE'),
salary DOUBLE NOT NULL,
companyaddress VARCHAR(50) DEFAULT 'hoodi circle,bangalore'
);
-------------------------------------------------------------------------------

-- DROP function(table and database)

DROP TABLE employee1;
DESC employee1;  /* error msg*/


CREATE DATABASE itorizon1;
USE itorizon1;

DROP DATABASE itorizon1;
----------------------------------------------------------------------------------
-- ALter (table)-> ADD, delete/drop or modify

--  ADD new columnname columndefinition [first/after] columnname;
ALTER TABLE employee ADD eDOB DATE NOT NULL AFTER ename;

-- desc -description of the table

DESC employee;

ALTER TABLE employee ADD ejoiningdate DATE NOT NULL FIRST ;

-- delete or drop the column 

ALTER TABLE employee DROP eDOB;

-- modify the column

ALTER TABLE employee ADD edob INT  NOT NULL AFTER ename ;

ALTER TABLE employee MODIFY edob DATE;


--------------------------------------------------------------------------------------------
-- truncate (table)


CREATE TABLE employee1
(eid INT AUTO_INCREMENT PRIMARY KEY,
ename VARCHAR(20) UNIQUE,
department ENUM('R&D','ORACLE','DEVOPS','HR','OTM','SERVICE'),
salary DOUBLE NOT NULL,
companyaddress VARCHAR(50) DEFAULT 'hoodi circle,bangalore'
);

TRUNCATE TABLE employee1;

DESC employee1;   /*showing the details*/ 

SELECT * FROM employee1;
------------------------------------------------------------------------------------------
-- comments 

-- 1.Single line comments.(-- content)
-- 2.Multi line comments.(/* multiple line comments*/)
-- 3.In line comments(/* in line comments */)

-------------------------------------------------------------------------------------------
-- alter(rename)

-- rename the table

ALTER TABLE employee RENAME emp; 
DESC employee; /* error msg(table is rename emp)*/
DESC emp;

-- alter column name

 ALTER TABLE emp CHANGE ename empname VARCHAR(20);
 DESC emp;
 
 
CREATE TABLE stud 
(
sid INT,
NAME VARCHAR(10)
);

ALTER TABLE stud CHANGE  NAME  sname VARCHAR(20);
 DESC stud;
---------------------------------------------------------------------------------------
