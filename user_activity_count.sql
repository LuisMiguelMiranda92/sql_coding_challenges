/*
Count the unique activity types for each user, ensuring users with no activities are also included.


The output should show each user's ID and their activity type count, with zero for users who have no activities.
*/
select u.user_id,
        COUNT(DISTINCT a.activity_type) as activities
from user_profiles u
left join activity_log a
on u.user_id = a.user_id
group by 1