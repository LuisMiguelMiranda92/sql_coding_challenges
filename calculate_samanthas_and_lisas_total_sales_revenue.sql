/*
What is the total sales revenue of Samantha and Lisa?
*/
select salesperson,
        SUM(sales_revenue) as total_sales
from sales_performance
where salesperson in ('Samantha', 'Lisa')
group by salesperson