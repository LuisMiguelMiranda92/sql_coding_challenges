/*
Write a query that returns the number of unique users per client for each month. 
Assume all events occur within the same year, so only month needs to be be in the output as a number from 1 to 12.
*/

select client_id AS client,
    EXTRACT(MONTH FROM time_id) AS month,
    COUNT(DISTINCT user_id) as users
from fact_events
GROUP BY client, month 