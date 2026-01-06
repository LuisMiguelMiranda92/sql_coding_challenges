/*
Calculate number of reviews for every business category. 
Output the category along with the total number of reviews. 
Order by total reviews in descending order.
*/
SELECT 
    unnest(string_to_array(categories, ';')) AS category, 
    SUM(review_count) AS total_reviews
FROM yelp_business
GROUP BY category
ORDER BY total_reviews DESC;