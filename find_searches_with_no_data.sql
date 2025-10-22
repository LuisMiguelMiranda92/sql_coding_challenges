/*
Find all search details where data is missing from the host_response_rate column.
*/

select * 
from airbnb_search_details
where host_response_rate IS NULL