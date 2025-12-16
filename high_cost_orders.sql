/*
Find the customers with the highest daily total order cost between 2019-02-01 and 2019-05-01. 
If a customer had more than one order on a certain day, sum the order costs on a daily basis. 
Output each customer's first name, total cost of their items, and the date. 
If multiple customers tie for the highest daily total on the same date, return all of them.


For simplicity, you can assume that every first name in the dataset is unique.
*/
with ranked_order AS (select cust_id,
        order_date,
        SUM(total_order_cost) as total_order_cost,
        RANK() OVER(
        PARTITION BY order_date
        ORDER BY SUM(total_order_cost) DESC) as order_rank
from orders
where order_date BETWEEN '2019-02-01' AND '2019-05-01'
group by order_date, cust_id
order by order_date, order_rank
)
select c.first_name,
        r.total_order_cost,
        r.order_date
from ranked_order r
join customers c
on r.cust_id = c.id
where r.order_rank = 1