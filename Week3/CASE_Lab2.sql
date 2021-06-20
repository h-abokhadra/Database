SELECT cust_id, cust_first_name, cust_last_name, cust_year_of_birth,
  CASE
      WHEN cust_year_of_birth < 1944
         THEN 'Silent Generation'
      WHEN cust_year_of_birth <= 1964
         THEN 'Baby Boomer'
      WHEN cust_year_of_birth <= 1979
         THEN 'Gen X'
      ELSE 
         'Millennial'
  END AS "Generation"
 FROM sh.customers
WHERE ROWNUM < 100;