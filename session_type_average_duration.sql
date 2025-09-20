/*
Calculate the average session duration (in seconds) for each session type.
*/

select session_type,
        AVG(EXTRACT(EPOCH FROM (session_end - session_start))) AS avg_duration_seconds
from twitch_sessions
Group By session_type