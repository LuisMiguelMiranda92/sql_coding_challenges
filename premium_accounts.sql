/*
You have a dataset that records daily active users for each premium account. 
A premium account appears in the data every day as long as it remains premium. 
However, some premium accounts may be temporarily discounted, meaning they are not actively paying 
— this is indicated by a final_price of 0.

For each date, count the number of premium accounts that were actively paying on that day. 
Then, track how many of those same accounts are still premium and actively paying exactly 7 days later, 
if that later date exists in the dataset. 
Return results for the first 7 dates in the dataset.

Output three columns:
•   The date of initial calculation.
•   The number of premium accounts that were actively paying on that day.
•   The number of those accounts that remain premium and are still paying after 7 days.
*/
SELECT 
    t1.entry_date,
    -- Count all paying accounts on the initial day
    COUNT(t1.account_id) AS paying_accounts_today,
    -- Count only those who also appeared as paying 7 days later
    COUNT(t2.account_id) AS paying_accounts_7d_later
FROM premium_accounts_by_day t1
LEFT JOIN premium_accounts_by_day t2 
    ON t1.account_id = t2.account_id 
    AND t2.entry_date = t1.entry_date + INTERVAL '7 day'
    AND t2.final_price > 0
WHERE t1.final_price > 0
GROUP BY t1.entry_date
ORDER BY t1.entry_date
LIMIT 7;