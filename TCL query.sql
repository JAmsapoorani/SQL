-- TCL (transaction control language)
/*
TCL -its mean only use with DML commands 
1.commit
2.Rollback
3.savapoint
*/

-- before you start tcl using this commands
SET autocommit=0;
START TRANSACTION; 
-- commit (used to save all the transaction to the database)
DELETE FROM emp WHERE eid=2;
COMMIT;
SELECT * FROM emp;

-------------------------------------------------------------------------------
-- rollback
SET autocommit=0;
START TRANSACTION; 
USE itorizon;
DESC emp;
 INSERT INTO emp (ejoiningdate,empname,edob,department,salary) VALUES
  ('2022-05-16','arunkumar','1997-07-30','ORACLE',25000),
  ('2022-05-16','saravankumar','1997-07-30','DEVOPs',25000);
ROLLBACK;
SET autocommit=0;
START TRANSACTION; 
SELECT * FROM emp;
DELETE FROM emp WHERE eid=6;
ROLLBACK;
SELECT * FROM emp;
-----------------------------------------------------------------------------------------

-- savepoint 
SET autocommit=0;
START TRANSACTION; 
SAVEPOINT emp1;
DELETE FROM emp WHERE eid=19;
ROLLBACK TO emp1;
SELECT * FROM emp;