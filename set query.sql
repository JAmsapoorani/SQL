-- set operators
/*
1.union
2.union all
3.intersect
4.minus
*/
USE itorizon;
CREATE TABLE customer (
cid INT PRIMARY KEY,
fname VARCHAR(15),
lname VARCHAR(15));

CREATE TABLE employee (
eid INT PRIMARY KEY,
fname VARCHAR(15),
lname VARCHAR(15));

INSERT INTO customer VALUES(1,'mani','bharathi'),(2,'amsa','poorani'),
(3,'kala','devi'),(4,'ram','kumar');
SELECT * FROM customer;

INSERT INTO employee VALUES(1,'arun','kumar'),(2,'raj','k'),
(3,'mala','devi'),(4,'kavi','kumar');
SELECT * FROM employee;
---------------------------------------------------------------------------------------
-- union( remove duplicate value .only have distinct value )
 SELECT fname,lname FROM customer 
 UNION
 SELECT fname,lname FROM employee;
 
 INSERT INTO customer VALUES(5,'mani','bharathi');
 SELECT * FROM customer;
 
 SELECT fname,lname FROM customer 
 UNION
 SELECT fname,lname FROM employee;
 
 -------------------------------------------------------------------------------------
 -- union all ( allows duplicate values )
 SELECT fname,lname FROM customer 
 UNION ALL
 SELECT fname,lname FROM employee;
 
 ----------------------------------------------------------------------------------------
 -- intersect (its contain union and union all  values or both table cotaining values )
  SELECT * FROM customer,employee WHERE customer.cid=employee.eid;

 SELECT * FROM customer JOIN employee ON customer.cid=employee.eid ;
 
 -----------------------------------------------------------------------------------------------
 -- minus(a-b=a ,b-a=b)
 SELECT * FROM customer LEFT JOIN employee ON customer.cid=employee.eid ;
 
 SELECT * FROM customer RIGHT JOIN employee ON customer.cid=employee.eid ;
 
 
 