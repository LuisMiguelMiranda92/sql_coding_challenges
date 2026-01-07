/*
Find the review_text that received the highest number of  cool votes.
Output the business name along with the review text with the highest number of cool votes.
*/
select business_name,
        review_text
from (
select business_name,
        review_text,
        RANK() OVER (ORDER BY cool DESC) as ranked_by_cool_votes
from yelp_reviews)
where ranked_by_cool_votes = 1
