/*
You have been asked to find the 5 most lucrative products (including ties) in terms of total revenue for the first half of 2022 
(from January to June inclusive).

Output their IDs and the total revenue. There may be more than 5 rows in the output since you are including ties.
*/
with ranked_products as (
select product_id,
        SUM(cost_in_dollars * units_sold) as total_profit,
        RANK() OVER(ORDER BY SUM(cost_in_dollars * units_sold) DESC) as rank_product
from online_orders
where date_sold between '2022-01-01' AND '2022-06-30'
group by product_id
)
select product_id,
        total_profit
from ranked_products
where rank_product < 6
order by total_profit DESC