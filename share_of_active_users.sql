/*
Calculate the percentage of users who are both from the US and have an 'open' status, as indicated in the fb_active_users table.
*/
select (COUNT(CASE 
                WHEN (country = 'USA' AND status = 'open') THEN 1 END)*1.0 / COUNT(*))*100 AS users_usa_open_status 
from fb_active_users