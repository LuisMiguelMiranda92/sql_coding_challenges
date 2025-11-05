/*
Identify the products that exist in the inventory but have never been sold. 
Return the product ID and product name for each unsold product.
*/
select  i.product_id,
        i.product_name
from inventory_current_stock i
where i.product_id not in (
                        select product_id
                        from sales_transactions)
order by 1