-- Display the departments into which no employee joined in last two years.

select d.department_id, d.department_name, count(e.employee_id) as employee 
    from employees e 
    right join departments d on d.department_id = e.department_id 
    and extract (year from e.hire_date) >= (extract(year from sysdate) - 2)
    group by d.department_id, d.department_name
    having count(e.employee_id) = '0'
    order by d.department_id asc

/
