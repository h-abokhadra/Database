SELECT SUM(PARTSCOST), SUM(LABORCOST), AVG(PARTSCOST), AVG(LABORCOST), COUNT(SERVINVNO)
FROM SI.servinv
WHERE (carserial=' Acura' OR carserial =' Mercedes' OR carserial ='Jaguar ') AND
servdate BETWEEN '2015-09-01' AND '2018-12-31' ;

SELECT sum(carsaleprice), avg(partscost + laborcost), count(custname)
FROM servinv S, car C, saleinr Sale
WHERE S.carserial = C. carserial = Sale.carserial AND S.custname = C. custname = Sale.custname
AND carmake IN('Acura', 'Mercedes', 'Jaguar')
AND servdate BETWEEN '2015-09-01' AND '2018-12-31' ;