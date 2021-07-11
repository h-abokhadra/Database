ALTER SESSION SET current_schema = SI;

SELECT Car.carmake, Car.carmodel, SUM(servinv.laborcost) TotalLaborCost
FROM Car JOIN servinv
ON Car.carserial = servinv.carserial
WHERE Car.carmake = 'Toyota'
GROUP BY Car.carmake, Car.carmodel;

