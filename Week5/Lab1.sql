select department_id,last_name,salary,
RANK()
OVER(
Order by SALARY ) AS RANK
from hr.employees
--where department_id=60
order by RANk,last_name



select department_id,last_name,salary,
DENSE_RANK()
OVER( partition by department_id
Order by SALARY) AS RANK
from hr.employees
where department_id=60
order by RANk,last_name