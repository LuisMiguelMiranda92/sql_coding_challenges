/*
Find the monthly active users for January 2021 for each account. 
Your output should have account_id and the monthly count for that account.
*/

select account_id,
        COUNT(DISTINCT user_id) AS monthly_count
from sf_events
WHERE record_date >= '01/01/2021' 
        AND record_date < '02/01/2021'
GROUP BY account_id
