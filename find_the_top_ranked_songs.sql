/*
Find all the songs that were top-ranked (at first position) at least once since the year 2005.
*/
select DISTINCT artist,
    song_name
from billboard_top_100_year_end
where year_rank = 1
    AND year >= 2005
order by artist