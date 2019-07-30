-- Display employee name, job title for the jobs employee did in the past where the job was done less than six months.

select e.first_name,e.last_name,j.job_title,round(months_between(jh.end_date,jh.start_date),2)
from employees e join jobs j on j.job_id = e.job_id
join job_history jh on jh.employee_id = e.employee_id
where round(months_between(jh.end_date,jh.start_date),2) < 6
/
