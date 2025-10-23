/*
Find the price of the cheapest property for every city.
*/
select city,
        MIN(price) AS cheapest_property
from airbnb_search_details
GROUP BY 1
ORDER BY 1