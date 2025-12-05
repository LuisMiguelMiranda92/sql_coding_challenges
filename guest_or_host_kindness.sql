/*
Find whether hosts or guests give higher review scores based on their average review scores. 
Output the higher of the average review score rounded to the 2nd decimal spot (e.g., 5.11).
*/
select from_type,
        ROUND(AVG(review_score), 2) as avg_review
from airbnb_reviews
group by from_type
order by AVG(review_score) desc
limit 1