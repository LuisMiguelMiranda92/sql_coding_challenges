/*
Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.
*/
SELECT department,
        first_name,
        salary
FROM (
    SELECT department,
            first_name,
            salary,
            RANK() OVER (PARTITION BY department ORDER BY SALARY DESC) as ranked_salary
    FROM employee
)
WHERE ranked_salary = 1