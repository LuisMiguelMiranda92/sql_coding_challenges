/*
Calculate the sales revenue for the year 2021.
*/
select SUM(order_total) as sales_2021
from amazon_sales
where EXTRACT(YEAR FROM order_date) = 2021 