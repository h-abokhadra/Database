ACCEPT p_location_id PROMPT 'Enter location ID'
SELECT country_id
FROM hr.locations
WHERE location_id = '&p_location_id'

Declare  --declaring variables
        v_number Number;
Begin  --Start of the program
        v_number := 10;
Exception -- exception

End;
