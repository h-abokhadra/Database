SELECT custname,
CASE COUNT(carserial)
                            WHEN 1 
                                      THEN 'one-time buyer'
                            WHEN 2 
                                     THEN 'two-time buyer'
                            ELSE 'frequent buyer'
                END "Buyer Type"
FROM SI.CAR
WHERE carmake='MERCEDES'
GROUP BY custname ;
