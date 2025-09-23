/*
Return a list of users with status free who didn’t make any calls in Apr 2020.


*/
select *
from rc_users users
JOIN rc_calls calls 
ON users.user_id = calls.user_id
WHERE users.status LIKE 'free'
    AND (calls.call_date < '2020-04-01' OR calls.call_date >= '2020-05-01')