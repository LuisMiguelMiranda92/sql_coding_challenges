#Return the total number of comments received for each user in the 30 or less days before 2020-02-10. Don't output users who haven't received any comment in the defined time period.

select user_id,
        sum(number_of_comments) AS total_number_of_comments_received 
from fb_comments_count
WHERE created_at < '2020-02-10' 
GROUP BY user_id