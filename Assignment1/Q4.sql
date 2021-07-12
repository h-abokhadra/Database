SELECT C.carmake, C.carmodel, SUM(S.laborcost) TotalCostForLabor
FROM SI.Car C JOIN SI.servinv S
ON C.carserial = S.carserial
WHERE C.carmake = 'TOYOTA'
GROUP BY C.carmake, C.carmodel;

