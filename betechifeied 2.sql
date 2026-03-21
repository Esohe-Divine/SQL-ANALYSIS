select s.first_name, s.last_name, s.occupation, p.department_name
from parks_and_recreation.employee_salary as s
join parks_and_recreation.parks_departments as p
on s.dept_id = p.department_id;


select department_name, avg (salary), min(salary), max(salary)
from parks_and_recreation.employee_salary 
join parks_and_recreation.parks_departments 
on dept_id = department_id
 group by department_name;


select avg(salary)
 from parks_and_recreation.employee_salary




select first_name, last_name, salary 
 from parks_and_recreation.employee_salary
 where (select avg(salary)
 from parks_and_recreation.employee_salary)
 


select d.first_name, d.last_name, ifnull(s.occupation, 'not assigned') as occupation 
from parks_and_recreation.employee_demographics as d
left join parks_and_recreation.employee_salary as s
on d.employee_id = s.employee_id;
 

 