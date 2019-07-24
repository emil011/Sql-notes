-- Display department ID, name, year, and Number of employees joined.

select d.department_id, d.department_name,extract (year from e.hire_date) as years, count(e.employee_id) as employee 
    from employees e 
    join departments d on d.department_id = e.department_id 
    group by d.department_id, d.department_name,extract (year from e.hire_date)
    order by d.department_id asc

/
