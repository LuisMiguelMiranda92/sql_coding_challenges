/*
How many orders were shipped by Speedy Express in total?
*/
select COUNT(*) as num_of_orders
from shopify_orders o
left join shopify_carriers c
on o.carrier_id = c.id
where c.name = 'Speedy Express'