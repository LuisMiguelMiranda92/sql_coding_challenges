/*
Find the lowest order cost of each customer.
Output the customer id along with the first name and the lowest order price.
*/
select c.id,
        c.first_name,
        MIN(total_order_cost) as min_order_cost
from customers c
join orders o
on c.id = o.cust_id
group by c.id, c.first_name
order by c.id