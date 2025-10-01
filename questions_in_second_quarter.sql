/*
How many searches were there in the second quarter of 2021?


*/
select COUNT(*) AS number_of_searches
from fb_searches
WHERE EXTRACT(QUARTER FROM date) = 2 
AND EXTRACT(YEAR FROM date) = '2021'