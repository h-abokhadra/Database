Create Table cust
(custid number(2),
custname varchar2(20),
custcity varchar2(10));
insert into cust values(1,'Tom','Brampton');
insert into cust values(2,'Roy','Toronto');
insert into cust values(3,'Ria','Brampton');
insert into cust values(4,'Sammuel','Oakville');
insert into cust values(5,'Ronit','Toronto');
insert into cust values(6,'Anny','Oakville');
insert into cust values(7,'Rammy','Toronto');
insert into cust values(8,'Zia','Toronto');
select * from cust;

SELECT distinct A.Custname AS CustomerName1, A.custCity
FROM Cust A, Cust B
WHERE A.Custid <> B.CustID
AND A.custCity = B.custCity
ORDER BY A.custCity;