/*
Find users who are both a viewer and streamer.
*/

select user_id AS users 
from twitch_sessions
WHERE session_type IN ('streamer', 'viewer')
GROUP BY user_id
HAVING COUNT(DISTINCT session_type) = 2
