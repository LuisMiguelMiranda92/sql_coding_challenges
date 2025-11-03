/*
Find the average number of bathrooms and bedrooms for each city’s property types. 
Output the result along with the city name and the property type.
*/

select city,
        property_type,
        AVG(bathrooms) AS average_bathrooms,
        AVG(bedrooms) AS average_bedrooms
from airbnb_search_details
GROUP BY city, property_type
ORDER BY city, average_bathrooms, average_bedrooms