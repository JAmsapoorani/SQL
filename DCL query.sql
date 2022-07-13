-- DCL (data control language)
/*
1.grant
2.revoke
*/
-- Grant(user access privilages to the database)
USE itorizon;
GRANT SELECT ON emp TO 'root'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON emp TO 'root'@'localhost';
GRANT ALL ON emp TO 'root'@'localhost';
SELECT * FROM emp;
-- revoke(it is used to take back permissions from the user)
REVOKE DELETE ON emp FROM 'root'@'localhost' ;
SELECT * FROM emp;
REVOKE ALL ON emp FROM 'root'@'localhost' ;
REVOKE SELECT ON emp FROM 'root'@'localhost';

