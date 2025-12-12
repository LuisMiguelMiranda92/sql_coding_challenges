/*
Identify returning active users by finding users who made a second purchase within 1 to 7 days after their first purchase. 
Ignore same-day purchases. 
Output a list of these user_ids.
*/
with purchase_history AS (
select user_id,
        created_at as current_purchase_date,
        LAG(created_at, 1) OVER(
            PARTITION BY user_id
            ORDER BY created_at ASC
        ) AS previous_purchase_date,
        ROW_NUMBER() OVER(
            PARTITION BY user_id
            ORDER BY created_at ASC
        ) AS transaction_rank
from amazon_transactions
)
select user_id
from purchase_history
where transaction_rank = 2 
        AND previous_purchase_date IS NOT NULL
        AND (current_purchase_date - previous_purchase_date) BETWEEN 1 AND 7