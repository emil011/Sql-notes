/* 
Write a query in SQL to display the full name (first and last name), and salary of those employees who working in any department located in London.
*/

select e.first_name,e.last_name,e.salary,d.department_name,loc.city
 from employees e join departments d on e.department_id = d.department_id
 join locations loc on loc.location_id = d.location_id
 group by e.first_name,e.last_name,e.salary,d.department_name,loc.city
having loc.city = 'London'
/
