/*
Write a query in SQL to display full name(first and last name), job title, starting and ending date of last jobs for those employees who worked without a commission percentage.
*/


select e.first_name,e.last_name,e.salary,e.commission_pct,j.job_title,jh.start_date,jh.end_date
 from employees e join job_history jh on e.employee_id = jh.employee_id
 join jobs j on j.job_id = jh.job_id
where e.commission_pct is null
/
