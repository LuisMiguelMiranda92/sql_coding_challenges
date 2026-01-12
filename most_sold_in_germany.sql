/*
Find the product with the most orders from users in Germany. Output the market name of the product or products in case of a tie.
*/
with ranked_table as (
select market_name,
        COUNT(*) as total_orders,
        RANK() OVER (ORDER BY COUNT(*) DESC) as ranked_product
from dim_product dp
join map_product_order po
on dp.prod_sku_id = po.product_id
join shopify_orders so
on so.order_id = po.order_id
join  shopify_users su
ON so.user_id = su.id
where su.country = 'Germany'
group by market_name
)
select market_name
from ranked_table
where ranked_product = 1
