/*
Calculate the total revenue from each customer in March 2019. 
Include only customers who were active in March 2019. 
An active user is a customer who made at least one transaction in March 2019.

Output the revenue along with the customer id and sort the results based on the revenue in descending order.
*/
select sum(total_order_cost) as total_revenue,
        cust_id
from orders
where EXTRACT(MONTH from order_date) = 3
group by cust_id
having sum(total_order_cost) > 0
order by total_revenue DESC