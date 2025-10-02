/*
Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. 
Order records by customer's first name alphabetically.
*/

select c.id,
        c.first_name,
        sum(o.total_order_cost) AS total_cost
from customers as c
INNER JOIN orders as o
ON c.id = o.cust_id
GROUP BY c.id,
            c.first_name,
            o.total_order_cost
ORDER BY first_name