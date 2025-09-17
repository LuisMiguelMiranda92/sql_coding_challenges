#Compare each employees salary with the average salary of the corresponding department. Output the department, first name, and salary of employees along with the average salary of that department.

select department,
        first_name,
        salary,
        AVG(salary) OVER (PARTITION BY department) AS average_salary_by_dpt
from employee
ORDER BY average_salary_by_dpt DESC