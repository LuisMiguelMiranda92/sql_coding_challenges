/*
Find the number of account registrations according to the signup date. 
Output the year months (YYYY-MM) and their corresponding number of registrations.
*/
select TO_CHAR(started_at, 'YYYY-MM') AS year_month,
        COUNT(*)
from noom_signups
group by 1
order by 1