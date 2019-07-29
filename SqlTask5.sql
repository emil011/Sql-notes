-- Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

select d.department_name,emp.first_name,emp.salary,emp.hire_date, count(e.employee_id)
    from employees e 
    join  employees emp on  emp.employee_id = e.manager_id
    join departments d on emp.department_id = d.department_id
    group by  d.department_name,emp.first_name,emp.salary,emp.hire_date
    having months_between(sysdate,emp.hire_date) > 5 * 12 
    order by emp.first_name asc
    
/
