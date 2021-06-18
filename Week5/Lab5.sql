ACCEPT p_id PROMPT 'Enter Country ID'
SELECT *
FROM HR.countries
WHERE country_id = '&p_id'

select * from hr.locations
ACCEPT p_id PROMPT 'ENTER REGION ID'
select count (*)  from hr.countries
where region _id = '&p_id'