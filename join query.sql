-- sql join 
/*
1.join 
2.inner join
3.outer join
4.left join 
5.right join
6.cross join
*/
SELECT * FROM employee1;
INSERT INTO employee1 VALUES(10,'raj','kumar',45000),(11,'renuka','devi',25000),
(12,'ram','moorty',10000),(13,'devi','priya',50000);
SELECT * FROM customer;
INSERT INTO customer VALUES(6,'raj','kumar'),(7,'renuka','devi'),
(8,'ram','moorty'),(9,'devi','priya');
-- join

SELECT * FROM customer c JOIN employee1 e ON c.cid=e.eid;

-- inner join(intersect part (both table contains values)

 SELECT * FROM customer c INNER JOIN employee1 e ON c.cid=e.eid;
 
 -- left join
  SELECT * FROM customer c LEFT JOIN employee1 e ON c.cid=e.eid;
  
  
   SELECT * FROM customer c LEFT OUTER JOIN employee1 e ON c.cid=e.eid;
  -- right join
  
   SELECT * FROM customer c RIGHT JOIN employee1 e ON c.cid=e.eid;
   
     SELECT * FROM customer c RIGHT OUTER JOIN employee1 e ON c.cid=e.eid;
   -- cross join
    SELECT * FROM customer c CROSS JOIN employee1 e ;
    
    -- left side value (not join values)
    SELECT * FROM customer c LEFT JOIN employee1 e ON c.cid=e.eid WHERE e.eid IS NULL;
    
INSERT INTO customer VALUES(15,'raj','kumar'),(16,'supriya','k');

 SELECT * FROM customer c LEFT JOIN employee1 e ON c.cid=e.eid WHERE e.eid IS NULL;
 
 -- right side value (not join values)
  SELECT * FROM customer c RIGHT JOIN employee1 e ON c.cid=e.eid WHERE c.cid IS NULL;

  