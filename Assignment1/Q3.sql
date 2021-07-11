ALTER SESSION SET current_schema = SI;

SELECT custname, carmake, carmodel
FROM SI.CAR
INTERSECT
SELECT custname, carmake, carmodel
FROM SI.PROSPECT