-- Display employee name if the employee joined before his manager.

select e.first_name,e.last_name,e.hire_date
from employees e join employees emp  on e.manager_id = emp.employee_id
where e.hire_date < emp.hire_date
/
