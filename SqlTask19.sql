-- Display how many employees joined in each month of the current year.

select extract(month from e.hire_date) as month,count(e.employee_id) as employees
from employees e
where extract(year from e.hire_date) = extract(year from sysdate)
group by extract(month from e.hire_date)
/
