/*
Write a query to find which gender gives a higher average review score when writing reviews as guests. 
Use the from_type column to identify guest reviews. Output the gender and their average review score.
*/
select g.gender,
        AVG(r.review_score) as avg_score_by_gender
from airbnb_reviews r
join airbnb_guests g
on r.from_user = g.guest_id
where from_type = 'guest'
group by g.gender
order by avg_score_by_gender desc
limit 1