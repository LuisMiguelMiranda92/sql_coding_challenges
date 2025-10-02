/*
How many paid users had any calls in Apr 2020?
*/

select COUNT(DISTINCT u.user_id) AS users
from rc_calls AS c
JOIN rc_users AS u
ON c.user_id = u.user_id
WHERE c.call_date >= '2020-04-01' AND c.call_date < '2020-05-01'
        AND u.status = 'paid'