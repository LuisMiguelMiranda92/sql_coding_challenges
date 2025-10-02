/*
For each platform (e.g. Windows, iPhone, iPad etc.), calculate the number of users. 
Count the number of distinct users per platform, regardless of whether they used other platforms. 
Output the name of the platform with the corresponding number of users.
*/

select platform,
        COUNT(DISTINCT user_id) AS number_of_users
from user_sessions
GROUP BY 1