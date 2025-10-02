/*
Return the total number of posts for each month, aggregated across all the years 
(i.e., posts in January 2019 and January 2020 are both combined into January). 
Output the month number (i.e., 1 for January, 2 for February) and the total number of posts in that month.
*/

select EXTRACT(MONTH FROM post_date) as month,
        COUNT(post_id) AS total_posts 
from facebook_posts
group by month
ORDER BY month
