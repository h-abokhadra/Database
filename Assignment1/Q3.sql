SELECT custname, carmake, carmodel
FROM SI.CAR
INTERSECT
SELECT custname, carmake, carmodel
FROM SI.PROSPECT