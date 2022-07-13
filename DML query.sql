-- DML (data manipulation language)
/*
1.insert 
2.update
3.delete
*/
---------------------------------------------------------------------------------
-- insert 
USE itorizon;
DESC emp;
-- insert one values 
 INSERT INTO emp (ejoiningdate,empname,edob,department,salary) VALUES
  ('2022-05-16','amsa','1993-03-08','R&D',25000);
SELECT * FROM emp;
-- insert multiple values
 INSERT INTO emp (ejoiningdate,empname,edob,department,salary) VALUES
  ('2022-05-16','arun','1997-07-30','ORACLE',25000),
  ('2022-05-16','saravan','1997-07-30','DEVOPs',25000),
  ('2022-05-02','harshita','1998-08-25','ORACLE',25000),
  ('2022-05-02','tanu','1997-07-10','ORACLE',25000);
  
  SELECT * FROM emp;
  
  ---------------------------------------------------------------------------------------
  -- update 
   UPDATE emp SET empname='amsapoorani' WHERE eid=1;
   SELECT * FROM emp;
   ------------------------------------------------------------------------------------
   -- delete 
   DELETE FROM emp WHERE eid=1;
   SELECT * FROM emp;
   ----------------------------------------------------------------------------------
   