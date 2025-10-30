/*
Write a query to rank all employees by their salary from highest to lowest. Show the employee's name, salary, and their rank.
*/
select emp_name,
        salary,
        RANK() OVER(
            ORDER BY salary DESC
        ) AS ranked_salary
from employees