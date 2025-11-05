/*
Rank the top five customers by total purchase value. 
If multiple customers have the same total purchase value, treat them as ties and include all tied customers in the result. 
Display each customer's ID, total purchase value, and rank.


Ensure that the ranking does not skip numbers due to ties (e.g., if two customers share rank 2, the next rank should be 3).
*/
with ranked_purchases AS (
select customer_id,
        total_purchase_value,
        DENSE_RANK() OVER (
        ORDER BY total_purchase_value DESC
        ) as customer_rank
from customer_purchase
)
select customer_id,
        total_purchase_value,
        customer_rank
from ranked_purchases
where customer_rank <= 5