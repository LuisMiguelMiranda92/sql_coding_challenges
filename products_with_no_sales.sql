/*
Write a query to get a list of products that have not had any sales. Output the ID and market name of these products.
*/
select d.prod_sku_id,
        d.market_name
from dim_product d
left join fct_customer_sales s
on d.prod_sku_id = s.prod_sku_id
where s.prod_sku_id IS NULL