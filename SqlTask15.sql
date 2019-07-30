-- Display department name, average salary and number of employees with commission within the department.

select d.department_name,round(avg(e.salary)) as average ,count(e.employee_id) as employees
from employees e join departments d on e.department_id = d.department_id
where e.commission_pct is not null
group by d.department_name
/
