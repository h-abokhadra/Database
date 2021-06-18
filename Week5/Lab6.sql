ACCEPT p_location_id PROMPT 'Enter location ID'
SELECT country_id
FROM hr.locations
WHERE location_id = '&p_location_id'