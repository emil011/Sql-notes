/*
Write a query in SQL to display the full name (firt and last name ) of employee with ID and 
name of the country presently where (s)he is working.
*/

select e.employee_id,e.first_name,e.last_name,c.country_id,c.country_name
from employees e join departments d on e.department_id = d.department_id
join locations loc on loc.location_id = d.location_id
join countries c on loc.country_id = c.country_id
/
