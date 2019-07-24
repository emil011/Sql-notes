--Display the first name and join date of the employees who joined between 2002 and 2005.

select *
    from employees e
    where e.hire_date between to_date('01.01.2002', ' dd.mm.yyyy') and to_date('12.12.2005', ' dd.mm.yyyy')
    
/
