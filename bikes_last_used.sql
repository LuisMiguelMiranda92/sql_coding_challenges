#Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bikes last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.

select bike_number,
        MAX(end_time) as last_time_used
from dc_bikeshare_q1_2012
GROUP BY 1
ORDER BY last_time_used DESC