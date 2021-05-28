-- Show street address , city ,state province and county name using countries
---table and location table
SELECT L.STREET_ADDRESS,L.CITY,L.STATE_PROVINCE,C.COUNTRY_NAME
FROM HR.COUNTRIES C, HR.LOCATIONS L
WHERE C.country_id =L.country_id

SELECT DISTINCT L.COUNTRY_ID
from HR.LOCATIONS L

select country_id,country_name,region_name
from hr.countries
natural join hr.regions