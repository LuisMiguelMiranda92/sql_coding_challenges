/*
How many customers placed an order and what is the average order amount?
*/

select COUNT(DISTINCT customer_id) as num_of_customers,
        AVG(amount)
from postmates_orders