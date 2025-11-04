/*
Find athletes who competed for different countries across multiple Olympic games. 
An athlete is considered to have multiple teams if they appear in the dataset representing different countries in 
different Olympic competitions.

Return all competition records for athletes who represented more than one country. 
Output the athlete name, country, games, sport, and medal for each of their competitions.
*/
select *
from olympic_games_athletes
where name IN (
select name
from olympic_games_athletes
group by 1
having count( DISTINCT team) > 1
)
