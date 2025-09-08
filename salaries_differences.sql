#Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.

select ABS(MAX(CASE
                   WHEN dept.department = 'marketing' THEN employee.salary
               END) - MAX(CASE
                              WHEN dept.department = 'engineering' THEN employee.salary
                          END)) AS salary_difference
from db_employee employee
join db_dept dept
on employee.department_id = dept.id
where dept.id = 4 OR dept.id = 1