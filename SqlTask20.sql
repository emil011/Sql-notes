-- Display manager ID, first name, last name and number of employees managed by the manager.


select emp.employee_id,emp.first_name,emp.last_name,count(e.employee_id) as employees
from employees e join employees emp on e.manager_id = emp.employee_id
group by emp.employee_id,emp.first_name,emp.last_name
/
