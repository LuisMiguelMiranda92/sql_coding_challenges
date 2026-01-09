/*
Find the processed rate of tickets for each type. 
The processed rate is defined as the number of processed tickets divided by the total number of tickets for that type. 
Round this result to two decimal places.
*/
select type,
        COUNT(CASE WHEN processed = 'TRUE' THEN 1 END) * 1.00 / COUNT(*) as processed_rate
from facebook_complaints
group by type