ALTER SESSION SET current_schema = SI;

SELECT CARSERIAL As SerialNumber, CARListPrice As Price, ROUND(cume_dist() 
OVER (ORDER BY purchcost DESC) * 100,2) || '%' cume_dist 
From Car 
Where carmake = 'JAGUAR'
ORDER BY CARSERIAL;
