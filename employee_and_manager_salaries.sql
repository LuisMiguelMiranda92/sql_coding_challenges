/*
Find employees who are earning more than their managers. 
Output the employee's first name along with the corresponding salary.
*/
SELECT e.first_name,
        e.salary
FROM employee e
JOIN employee m
ON e.manager_id = m.id
where e.salary > m.salary