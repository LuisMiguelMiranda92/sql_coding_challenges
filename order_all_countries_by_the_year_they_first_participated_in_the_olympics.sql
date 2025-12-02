/*
Order all countries by the year they first participated in the Olympics.


Output the National Olympics Committee (NOC) name along with the desired year.


Sort records in ascending order by year, and alphabetically by NOC.
*/
with ranked_by_year AS (
select *,
        RANK() OVER(
        PARTITION BY noc
        ORDER BY year ASC
        ) as ordered_appearances
from olympics_athletes_events
)
select noc,
        year
from ranked_by_year
where ordered_appearances = 1
order by year ASC, noc