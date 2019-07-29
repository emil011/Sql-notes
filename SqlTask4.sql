-- Display departments where any manager is managing more than 5 employees.

select emp.department_id , dep.department_name,count(e.employee_id) as employees
    from employees e 
    join employees emp on e.manager_id = emp.employee_id
    join departments dep on emp.department_id = dep.department_id
    group by emp.department_id,dep.department_name
    having count(e.employee_id) > 5
    order by emp.department_id asc
 
/
