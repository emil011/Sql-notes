-- Write a query in SQL to display job title and average salary of employees.

select j.job_title,round(avg(e.salary),2) as average
  from employees e join jobs j on  e.job_id = j.job_id
  group by j.job_title
/
