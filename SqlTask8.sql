-- Write a query in SQL to display the country name, city, and number of those departments where at least 2 employees are working.


select c.country_name,loc.city, count(distinct d.department_id)
from employees e join departments d on e.department_id = d.department_id
join locations loc on loc.location_id = d.location_id
join countries c on c.country_id = loc.country_id
group by loc.city,c.country_name
having count(e.employee_id) >= 2
/
