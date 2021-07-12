SELECT SUM(PARTSCOST+LABORCOST) "SUM", ROUND (AVG(PARTSCOST+LABORCOST),2) "AVG", COUNT(SERVINVNO) "COUNT"
FROM SI.servinv s
JOIN SI.car c
ON s.carserial = c.carserial
JOIN SI.purchinv p
ON c.purchinvno = p.purchinvno
WHERE c.carmake IN ('ACURA', 'MERCEDES', 'JAGUAR ') AND
s.servdate BETWEEN '2015-09-01' AND '2018-12-31' ;
