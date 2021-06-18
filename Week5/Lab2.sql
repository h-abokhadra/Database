select department_id,employee_id ,salary,
ROW_NUMBER() OVER (ORDER BY SALARY) As row_num,
RANK() OVER (ORDER BY SALARY) As rank1,
DENSE_RANK() OVER (ORDER BY SALARY) As Dense_rank1
from hr.employees
where department_id=60