/*
Count the number of unique users per day who logged in from either a mobile device or web. 
Output the date and the corresponding number of users.
*/
select log_date,
        count(distinct user_id) as num_users
from (
    select *
    from mobile_logs
    UNION ALL
    select *
    from web_logs
) as all_logs
group by 1
order by 1
