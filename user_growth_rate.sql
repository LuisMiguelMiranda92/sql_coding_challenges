/*
Find the growth rate of active users for Dec 2020 to Jan 2021 for each account. 
The growth rate is defined as the number of users in January 2021 divided by the number of users in Dec 2020. 
Output the account_id and growth rate.
*/

select account_id,
        CAST(
            COUNT(DISTINCT CASE WHEN record_date >= '2021-01-01' AND record_date < '2021-02-01' THEN user_id END) AS DECIMAL) / 
            NULLIF(
                COUNT(DISTINCT CASE WHEN record_date >= '2020-12-01' AND record_date < '2021-01-01' THEN user_id END),0) AS growth_rate
from sf_events
GROUP BY account_id