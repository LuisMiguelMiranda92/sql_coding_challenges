/*
To better understand how the number of reviews affects accommodation prices, classify each listing based on its number of reviews (use column number_of_reviews) into the following categories:

•  0 reviews: "NO"
•  1 to 5 reviews: "FEW"
•  6 to 15 reviews: "SOME"
•  16 to 40 reviews: "MANY"
•  More than 40 reviews: "A LOT"

For each record, output the price along with the corresponding category that describes its review count.
*/
select price,
    (CASE 
        WHEN number_of_reviews = 0 THEN 'NO'
        WHEN number_of_reviews BETWEEN 1 AND 5 THEN 'FEW'
        WHEN number_of_reviews BETWEEN 6 AND 15 THEN 'SOME'
        WHEN number_of_reviews BETWEEN 16 AND 40 THEN 'MANY'
        ELSE 'A LOT'
    END) AS  review_category
from airbnb_search_details
order by price