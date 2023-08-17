--SELECT * FROM Customers;
--CREATE TABLE Customers(name VARCHAR, surname CHAR, age INT);
--INSERT INTO Customers VALUES('sandy','chakka',23),('hari','chakka',25);
--INSERT INTO Customers VALUES('anitha','awerisa',25),('koushik','chaladi',24),('annapurna','vikkurthy',20),('pavan','soma',30);
--SELECT * FROM Customers where age>=30;
--SELECT * FROM Customers where age>=20 and age<=30;
--Create table Agents(Agent_code varchar NOT NULL PRIMARY key, Agent Name varchar,Working_area varchar,Phone_no varchar,Commission float,Country varchar);
/*
INSERT into Agents values('AA01','charan','HYD','0123456789','10.0','India'),
                          ('AA02','Supraja','Ongole','53951461230','20.5','India'),
                          ('AA03', 'gababu','GNT','453825555','15.2','India');



INSERT into Agents values('AA04','sai','Jaipur','7619432846','10.0','India'),
                          ('AA05','Leela','Kerala','486248624','20.5','India'),
                          ('AA06', 'gababu','Bangalore','654987321','25','India');
 
INSERT INTO Agents VALUES('AA10', 'Mark', 'New York', '1234862037', 20,'USA'),
('AA11', 'Pierre', 'Paris','9999999', 25 ,'france'),
('AA12', 'Hans', 'Berlin','1563248967', 30, 'Germany'),
('AA13', 'Yamada', 'Tokyo','4569632147', 18, 'Japan');

Select *from agents where country='france';

SELECT *FROM Agents  ORDER BY Commission DESC;

Select * from Agents order by Commission ASC;
*/
--SELECT * FROM Agents WHERE agent='gababu'or working_area='GNT';
--SELECT * FROM Agents WHERE agent='gababu' and working_area='GNT';
--SELECT * FROM Agents WHERE not country='India';
--SELECT *  FROM Agents  ORDER BY Country  LIMIT 3;
--update Agents SET agent='nagababu' where agent='gababu' and working_area='GNT';
--Select * from Agents where working_area='GNT';
--LECT * from demo;
--DELETE from demo where id=9;
--SELECT COUNT(*), MAX(Commission), AVG(Commission)  FROM Agents;
--SELECT * from Agents where agent like"%e%";
--SELECT * FROM Agents WHERE Commission BETWEEN 15 AND 25;
--SELECT * FROM Agents WHERE Country IN ('India', 'USA');
--SELECT  MAX(Commission), AVG(Commission) ,sum(commission), min(commission) from Agents;--SELECT  MAX(Commission) as max_commision , AVG(Commission) as average_commision ,sum(commission) as total_commission, min(commission) as minimum_commision from Agents;
SELECT  MAX(Commission) as max_commision , Round(AVG(Commission),2) AS  average_commision ,sum(commission) as total_commission, min(commission) as minimum_commision from Agents;