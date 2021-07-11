ALTER SESSION SET current_schema = SI;

SELECT custname,
CASE COUNT(carserial)
                            WHEN 1 
                                      THEN 'one-time buyer'
                            WHEN 2 
                                     THEN 'two-time buyer'
                            ELSE 'frequent buyer'
                END 
FROM SI.CAR
WHERE carmake='MERCEDES'
GROUP BY custname ;