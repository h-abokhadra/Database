ACCEPT p_id PROMPT 'Enter Name'
SELECT *
FROM HR.countries
WHERE country_id = '&p_id'