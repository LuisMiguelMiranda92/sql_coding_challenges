/*
Count the number of unique users per day who logged in from both a mobile device and web. 
Output the date and the corresponding number of users.
*/

select m.log_date,
        COUNT(DISTINCT m.user_id) AS number_of_users
from mobile_logs m
JOIN web_logs w
ON m.log_date = w.log_date
AND m.user_id = w.user_id
GROUP BY 1