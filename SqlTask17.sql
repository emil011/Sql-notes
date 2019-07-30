-- Display job title and average salary for employees who did a job in the past.

select j.job_title,round(avg(e.salary)) as average
from employees e join jobs j on e.job_id = j.job_id
join job_history jh on jh.job_id = j.job_id
group by j.job_title
/
