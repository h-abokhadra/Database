ALTER SESSION SET current_schema = SI;

SELECT C.carmake, C.carmodel, SUM(S.laborcost) TotalCostForLabor
FROM Car C JOIN servinv S
ON C.carserial = S.carserial
WHERE C.carmake = 'Toyota'
GROUP BY C.carmake, C.carmodel;

