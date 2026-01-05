/*
We’re analyzing user data to understand how popular Apple devices are among users who have performed at least one event on the platform. 
Specifically, we want to measure this popularity across different languages. 
Count the number of distinct users using Apple devices —limited to "macbook pro", "iphone 5s", and "ipad air" — and 
compare it to the total number of users per language.

Present the results with the language, the number of Apple users, and the total number of users for each language. 
Finally, sort the results so that languages with the highest total user count appear first.
*/
select u.language,
        COUNT(DISTINCT CASE 
                WHEN e.device IN ('macbook pro',  'iphone 5s', 'ipad air') THEN u.user_id END) as apple_user,
        COUNT(DISTINCT u.user_id) as total_users
from playbook_events e
join playbook_users u
on e.user_id = u.user_id
group by u.language
order by total_users DESC