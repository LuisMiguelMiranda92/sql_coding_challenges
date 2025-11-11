/*
You are provided with an already aggregated dataset from Amazon that contains detailed information about sales across 
different products and marketplaces. 
Your task is to list the top 3 sellers in each product category for January. 
In case of ties, rank them the same and include all sellers tied for that position.


The output should contain seller_id ,total_sales ,product_category , market_place, and sales_date.
*/
with ranked_sellers AS (
   select *,
        RANK() OVER (
            PARTITION BY product_category
            ORDER BY total_sales DESC
        ) as ordered_total_sales
    from sales_data
    where EXTRACT(MONTH FROM sales_date) = 1
)
select seller_id,
    total_sales,
    product_category,
    market_place,
    sales_date
from ranked_sellers
where ordered_total_sales <= 3
