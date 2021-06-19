select distinct channel_id from sh.sales

SELECT prod_id,cust_id,channel_id,
    CASE channel_id
        WHEN 1
        THEN 'Channel 1'
        WHEN 2
        THEN 'Channel 2'
        WHEN 3
        THEN 'Channel 3'
     END AS "Channel"
FROM Sh.sales
where ROWNUM<100
-------------------------------------
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CUST_YEAR_OF_BIRTH,
    CASE
        WHEN CUST_YEAR_OF_BIRTH<1944
         THEN 'Silent Generation'
        WHEN CUST_YEAR_OF_BIRTH<=1964
         THEN 'Baby Boomers'
        WHEN CUST_YEAR_OF_BIRTH<=1979
         THEN 'Gen X'
        ELSE
            'Millenial'
        END AS "Generation"
FROM SH.CUSTOMERS
where ROWNUM<50
-----------
--Using HR database, return employee ID, first name, last name and salary
--category. Salary category is defined as following: 
--Low salary if salary <= 6000
--Medium salary if salary > 6,000 and salary <= 10,000
--High salary if salary > 10,000

SELECT EMPLoYEE_ID, FIRST_NAME,LAST_NAME,
  CASE
    WHEN SALARY <=6000
     THEN 'LOW SALARY'
    WHEN SALARY BETWEEN 6000  AND 10000
     THEN 'MEDIUM SALARY'
    ELSE 'HIGH SALARY'
    END AS "SALARY CAREGORY" 
FROM HR.EMPLOYEES
--------------------------------------
---Below example are on UNIOn ,UNION all , INTERSECT,Minus etc
----Difference between union and union all 
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (101,102,103)
UNION 
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (103,104,105)

SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (101,102,103)
UNION ALL
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (103,104,105)
---------------------------------------------------
------Below is the example of MINUS
-----------------------------------------------------
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (101,102,103,104,105)
MINUS 
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (103,104,105)
---------------------------------------------------
------Below is the example of INTERSECT
-----------------------------------------------------
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (101,102,103)
INTERSECT 
SELECT CUST_ID,CUST_FIRST_NAME,CUST_LAST_NAME
FROM SH.CUSTOMERS
WHERE cust_id in (103,104,105)
----
---
--Show a list of employee ids and all the job ids that they ever had in the company.
--Hint employees previous job ids are saved in the job_history table
SELECT employee_id,job_id
FROM HR.EMPLOYEES

UNION
SELECT employee_id,job_id
FROM HR.job_history
------
 ---What are the ids of the employees who used to work in a different department
SELECT jh.employee_id,jh.department_id
FROM HR.job_history jh
MINUS
SELECT e.employee_id,e.department_id
FROM HR.EMPLOYEES e
----------------------
----Show a list of employee names and all the job titles that they ever had in the company.
------------------------------------------
SELECT e.employee_id,e.first_name,e.last_name,e.job_id,j.Job_title
FROM HR.EMPLOYEES e, HR.jobs j
where e.job_id=j.job_id
UNION
SELECT e.employee_id,e.first_name,e.last_name,jh.job_id, j.Job_title
FROM HR.EMPLOYEES e,HR.job_history jh,  HR.jobs j
where e.employee_id=jh.employee_id
and jh.job_id=j.job_id
----------------------

SELECT e.employee_id,e.first_name,e.last_name,e.job_id,j.job_title
FROM HR.EMPLOYEES e 
inner join hr.jobs j
ON e.job_id=j.job_id

UNION
SELECT jh.employee_id,e.first_name,e.last_name,jh.job_id,j.job_title
FROM HR.job_history jh
inner join hr.employees  e
on jh.employee_id=e.employee_id
inner join hr.jobs j
on j.job_id=jh.job_id
---------------------
SELECT *
FROM hr.employees  e
SELECT count(*)
FROM hr.employees  e

SELECT count(*)
FROM hr.employees  e

SELECT sum(salary)
FROM hr.employees  e
where department_id=90

SELECT round(avg(salary),2)
FROM hr.employees  e


SELECT max(salary)
FROM hr.employees  e
where department_id=90

SELECT min(salary)
FROM hr.employees  e

select min(HIRE_DATE)
FROM hr.employees  e

select count(*),round(avg(salary),2),sum(salary),min(salary),max(salary)
FROM hr.employees  e




