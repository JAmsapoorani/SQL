-- Clause
/*
1.where
2.distinct
3.from
4.orderby
5.groupby
6.having
*/
-- where clause
SELECT * FROM employee1 WHERE eid=1;

SELECT * FROM employee1 WHERE fname='mani';

SELECT * FROM employee1 WHERE eid>3;

SELECT * FROM employee1 WHERE eid>3 AND fname='mani' OR eid<3 AND fname='mani' ;

-----------------------------------------------------------------------------------------
-- distinct clause
SELECT DISTINCT fname FROM employee1;
-----------------------------------------------------------------------------------------
-- order by
USE itorizon;

SELECT * FROM employee1 WHERE eid<4 ORDER BY fname ASC;
SELECT * FROM employee1 WHERE eid<4 ORDER BY fname DESC;
SELECT * FROM employee1 WHERE eid<4 OR eid>4 ORDER BY fname ASC,lname DESC;

-------------------------------------------------------------------------------------------
-- group by

SELECT salary,COUNT(*) FROM employee1 GROUP BY salary ;

---------------------------------------------------------------------------------------
-- having
SELECT salary,COUNT(*) FROM employee1 GROUP BY salary HAVING COUNT(*)>=2 ;
----------------------------------------------------------------------------------------------