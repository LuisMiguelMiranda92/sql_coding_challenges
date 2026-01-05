/*
You are given a table named airbnb_host_searches that contains listings shown to users during Airbnb property searches. 
Each record represents a property listing (not the user's search query). 
Determine the minimum, average, and maximum rental prices for each host popularity rating based on the property's number_of_reviews.

The host’s popularity rating is defined as below:
•   0 reviews: "New"
•   1 to 5 reviews: "Rising"
•   6 to 15 reviews: "Trending Up"
•   16 to 40 reviews: "Popular"
•   More than 40 reviews: "Hot"

Tip: The id column in the table refers to the listing ID.

Output host popularity rating and their minimum, average and maximum rental prices. 
Order the solution by the minimum price.
*/
select CASE 
            WHEN number_of_reviews = 0 THEN 'New'
            WHEN number_of_reviews between 1 and 5 THEN 'Rising'
            WHEN number_of_reviews between 6 and 15 THEN 'Trending Up'
            WHEN number_of_reviews between 16 and 40 THEN 'Popular'
            WHEN number_of_reviews > 40 THEN 'Hot' END as populatiry_rating,
        MIN(price) as min_price,
        AVG(price) as avg_price,
        MAX(price) as max_price
from airbnb_host_searches
group by populatiry_rating
order by min_price