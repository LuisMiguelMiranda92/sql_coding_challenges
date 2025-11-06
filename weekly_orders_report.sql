/*
For each week, starting on Sunday, calculate the total quantity across all orders for that week. 
Include only the orders that are from the first quarter of 2023. The output should contain 'week' and 'quantity'.
*/
select (week - CAST(EXTRACT (DOW from week) AS INT)) as week,
        sum(quantity) as quantity
from orders_analysis
where (EXTRACT (YEAR from week) = 2023) 
    AND (EXTRACT (QUARTER from week) = 1)
group by 1
order by 1