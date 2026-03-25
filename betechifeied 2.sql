SELECT 
  t1.first_name, 
  t1.last_name,
  t2.occupation,
  t3.department_name
FROM parks_and_recreation.employee_demographics AS t1
JOIN parks_and_recreation.employee_salary AS t2
ON t1.employee_id = t2.employee_id
JOIN parks_and_recreation.parks_departments AS t3
ON t2.dept_id = t3.department_id;


select department_name, 
 avg (salary) AS AVERAGE_SALARY,
 min(salary) AS MINIMUM_SALARY, 
 max(salary) AS MAXIMUM_SALARY
from parks_and_recreation.employee_salary 
join parks_and_recreation.parks_departments 
on dept_id = department_id
 group by department_name;




SELECT 
  first_name, 
  last_name, 
  salary 
 FROM parks_and_recreation.employee_salary
 WHERE  salary > (SELECT AVG(salary) FROM parks_and_recreation.employee_salary);
 


SELECT d.first_name, d.last_name, IFNULL(s.occupation, 'not assigned') as occupation 
FROM parks_and_recreation.employee_demographics AS d
LEFT JOIN parks_and_recreation.employee_salary AS s
ON d.employee_id = s.employee_id;
 

 
