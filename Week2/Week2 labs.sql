---Show the name of employees and the name of their department

---------------
SELECT E.FIRST_NAME,E.LAST_NAME ,D.DEPARTMENT_NAME
FROM HR.EMPLOYEEs E LEFT OUTER JOIN HR.DEPARTMENTs D
ON E.DEPARTMENT_ID= D.DEPARTMENT_ID
----------
SELECT *from HR.EMPLOYEES
---What is the difference between the employee salary and 
----the maximum salary that they can reach in their job. Use max_salary in jobs table.
SELECT e.first_name,e.last_name ,j.max_salary-e.salary as Difference_BETWEEN_SALARY
from hr.employees e inner join hr.jobs j
on e.job_id =j.job_id

SELECT e.first_name,e.last_name ,j.max_salary-e.salary
from hr.employees e , hr.jobs j
where e.job_id =j.job_id 

----------
----What is Den Raphael's department Name
SELECT e.first_name,e.last_name,d.department_name
FROM hr.employees e, hr.departments d
where e.department_id=d.department_id
AND e.first_name='Den' 
AND e.last_name LIKE 'Raphael%'
---

---Show the department name and the avg(salalry) of employees in every department
select d.department_name,avg(e.salary)
FROM hr.employees e left outer join hr.departments d
on e.department_id=d.department_id
group by (d.department_name)

select d.department_name,avg(e.salary)
FROM hr.employees e inner  join hr.departments d
on e.department_id=d.department_id
group by (d.department_name)

----Show the department names, City and Country Name of all the departments
SELECT d.department_name,l.city,c.country_name
FROM hr.departments d, hr.locations l,hr.countries c
where d.location_id= l.location_id
and l.country_id=c.country_id
--- if you need to use left outjoin
SELECT d.department_name,l.city,c.country_name
FROM hr.departments d left outer join hr.locations l
on  d.location_id= l.location_id
LEFT OUTER JOIN hr.countries c
ON  l.country_id=c.country_id


------What is Den Raphaely’s department Name, Street Address ,
---City, Country Name, and region name?

SELECT d.department_name,l.street_address,l.city,c.country_name,r.region_name
FROM HR.employees e, hr.departments d , hr.locations l,hr.countries c,hr.regions r
WHERE   
e.department_id=d.department_id
AND d.location_id= l.location_id
AND  l.country_id=c.country_id
AND c.region_id= r.region_id
AND e.first_name='Den'
AND e.last_name LIKE 'Raphaely%'


SELECT d.department_name,l.street_address,l.city,c.country_name,r.region_name
FROM HR.employees e INNER JOIN hr.departments d 
ON e.department_id=d.department_id
Inner Join hr.locations l
ON  d.location_id= l.location_id
INNER JOIN hr.countries c
ON   l.country_id=c.country_id
INNER JOIN hr.regions r
ON c.region_id= r.region_id
WHERE   
 e.first_name='Den'
AND e.last_name LIKE 'Raphaely%'