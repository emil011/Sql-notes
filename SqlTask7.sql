/* 
Write a query in SQL to display the details of jobs which was done by any of the employees who is presently earning a salary on and above 12000.
*/

select e.employee_id, e.first_name, e.last_name, j.job_title,e.salary from employees e 
    join jobs j on e.job_id = j.job_id
    join job_history jh on e.employee_id = jh.employee_id
where e.salary >= 12000
/
