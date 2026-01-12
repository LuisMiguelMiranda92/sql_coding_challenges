/*
What is the last name of the employee or employees who are responsible for the most orders?
*/
with ranked_employees as (
select e.last_name,
    COUNT(o.order_id) as total_orders,
    RANK() OVER (ORDER BY COUNT(o.order_id) DESC) as ranked_employee
from shopify_orders o
JOIN shopify_employees e
ON o.resp_employee_id = e.id
GROUP BY e.id, e.last_name
)
select last_name
from ranked_employees
where ranked_employee = 1
