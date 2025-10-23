/*
Find all searches for San Francisco with a flexible cancellation policy and a review score rating. 
Sort the results by the review score in the descending order.
*/
select * 
from airbnb_search_details
WHERE city = 'SF'
        AND cancellation_policy = 'flexible'
        AND review_scores_rating IS NOT NULL
ORDER BY review_scores_rating DESC
