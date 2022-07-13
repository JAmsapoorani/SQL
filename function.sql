-- string functions
/*
1.CHAR_LENGTH()
2.concat()
3.FIND_IN_SET()
4.FORMAT()
5.INSERT()
6.INSTR()
7.LCASE()
8.UCASE()
9.LEFT 
10.MID
*/
-- CHAR_LENGTH()
SELECT CHAR_LENGTH(fname) FROM employee1 ;  

SELECT CHAR_LENGTH('welcome');
--------------------------------------------------------------------------------------------
-- CONCAT
SELECT CONCAT('JavaTpoint', ' is', ' a', ' good', ' company.');  

SELECT CONCAT(fname,lname) AS NAME FROM employee1;

-- concat_ws
SELECT CONCAT_WS('+',fname,lname) AS NAME FROM employee1;

--------------------------------------------------------------------------------------------
-- FIND_IN_SET

SELECT FIND_IN_SET('Delhi', 'Mumbai, Goa, Banglore,Delhi, Kolkata, Chennai');   

SELECT FIND_IN_SET('amsa',fname) FROM employee1;

SELECT FIND_IN_SET('ram',fname) FROM employee1;

SELECT * FROM employee1;

-----------------------------------------------------------------------------------------------
-- FORMAT()
SELECT FORMAT(45.00,'percent');
SELECT FORMAT('.958','percent');

SELECT FORMAT(salary,'C') FROM employee1;
-------------------------------------------------------------------------------------------
-- INSERT()
SELECT INSERT(fname,2,3,'j') FROM employee1;

SELECT INSERT('javaprogram',4,5,'spring');
--------------------------------------------------------------------------------------------
-- INSTR()
SELECT INSTR('JavaTpoint', 'T');  
-------------------------------------------------------------------------------------------
-- LCASE()
SELECT LCASE( 'The CAPITAL of INDIA is NEW DELHI');  
----------------------------------------------------------------------------------------
-- UCASE()
SELECT UCASE( 'The CAPITAL of INDIA is NEW DELHI');  
---------------------------------------------------------------------------------------
-- LEFT 
SELECT LEFT('The CAPITAL of INDIA is NEW DELHI',5);
-------------------------------------------------------------------------------------------
-- MID
SELECT MID( 'NEW DELHI IS THE CAPITAL OF INDIA', 5, 10);  
-----------------------------------------------------------------------------------
-- scalar function
/*
ucase
lcase
mid
len(length)
round
floor
now
format
*/
-- length

SELECT LENGTH( 'NEW DELHI IS THE CAPITAL OF INDIA');  
-------------------------------------------------------------------------------------------
SELECT ROUND(2.6);
SELECT FLOOR(2.6);
SELECT eid,fname,NOW() AS datatime FROM employee1;
