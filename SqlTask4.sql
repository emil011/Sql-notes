-- Display departments where any manager is managing more than 5 employees.

select d.department_id,d.department_name,count(e.employee_id) as employees
    from hr.employees e 
    join hr.departments d on e.manager_id = d.manager_id
    group by d.department_id,d.department_name
    having count(e.employee_id) > 5
 
/
