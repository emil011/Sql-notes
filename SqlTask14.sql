-- Display employee ID, first name, last name and the date on which he ended his previous job.

select e.employee_id,e.first_name,e.last_name,max(jh.end_date)
from employees e join job_history jh on e.employee_id = jh.employee_id
group by e.employee_id,e.first_name,e.last_name
/
