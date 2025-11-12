/*
Find how many reviews exist for each review score given to 'Hotel Arena'. 
Output the hotel name ('Hotel Arena'), each review score, and the number of reviews for that score. 
Ensure the results only include 'Hotel Arena.'
*/
select  hotel_name,
        reviewer_score,
        COUNT(reviewer_score)
from hotel_reviews
where hotel_name = 'Hotel Arena'
group by hotel_name, reviewer_score 
order by reviewer_score