/*
For each video game player, find the latest date when they logged in.
*/
select player_id,
        MAX(login_date) AS latest_log
from players_logins
group by 1