/*
Write a query that shows each employee's name, department, salary, 
and the average salary for their department in a new column called avg_dept_salary.
*/
select emp_name, department, salary,
        AVG(salary) OVER (
            PARTITION BY department
        ) AS avg_salary_dept
from employees