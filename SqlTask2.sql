-- Display the departments into which no employee joined in last two years.

select d.department_id, d.department_name, count(e.employee_id) as employee 

    from employees e 
    right join departments d on d.department_id = e.department_id -- and e.hire_date between to_date('01.01.2017', ' dd.mm.yyyy') and to_date('31.12.2019', ' dd.mm.yyyy')
    and extract (year from e.hire_date) >= (extract(year from sysdate) - 2)
    group by d.department_id, d.department_name
    having count(e.employee_id) = '0'
    order by d.department_id asc

/
