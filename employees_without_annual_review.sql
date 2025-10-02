/*
Return all employees who have never had an annual review. 
Your output should include the employee's first name, last name, hiring date, and termination date. 
List the most recently hired employees first.
*/

select e.first_name,
        e.last_name,
        e.hire_date,
        e.termination_date
from uber_employees e
LEFT JOIN uber_annual_review a
ON e.id = a.emp_id
WHERE a.emp_id IS NULL
ORDER BY 3 DESC