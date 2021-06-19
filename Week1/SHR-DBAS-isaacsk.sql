 USE HR
 
SELECT a.location_id,b.location_id,b.department_name
from hr.locations a, hr.departments b
where a.location_id= b.location_id
