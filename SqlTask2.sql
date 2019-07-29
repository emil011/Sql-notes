-- Display the departments into which no employee joined in last two years.

select d.department_id, d.department_name,  max(extract (year from e.hire_date)) as Year

    from employees e 
    
    join departments d on d.department_id = e.department_id 

    group by d.department_id, d.department_name
    
    having  max(extract (year from e.hire_date)) < (extract(year from sysdate) - 2)
    
    order by d.department_id asc

/

