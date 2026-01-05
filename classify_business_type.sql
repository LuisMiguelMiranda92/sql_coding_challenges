/*
Classify each business as either a restaurant, cafe, school, or other.

A restaurant should have the word 'restaurant' in the business name. 
This includes common international or accented variants, such as “restaurante”, “restauranté”, etc.
A cafe should have either 'cafe', 'café', or 'coffee' in the business name.
A school should have the word 'school' in the business name.
All other businesses should be classified as 'other'.
Ensure each business name appears only once in the final output. 
If multiple records exist for the same business, retain only one unique instance.

The final output should include only the distinct business names and their corresponding classifications.
*/
select DISTINCT business_name,
        CASE
            WHEN business_name ILIKE '%restaurant%' THEN 'restaurant'
            WHEN business_name ILIKE '%cafe%' THEN 'cafe'
            WHEN business_name ILIKe '%coffee%' THEN 'cafe'
            WHEN business_name ILIKe '%school%' THEN 'school' 
            ELSE 'other' END AS classification
from sf_restaurant_health_violations