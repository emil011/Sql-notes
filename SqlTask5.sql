-- Display department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

select d.department_name,e.first_name,e.salary
    from hr.employees e 
    join hr.departments d on e.manager_id = d.manager_id
    where months_between(sysdate,e.hire_date) > 5 * 12
/
