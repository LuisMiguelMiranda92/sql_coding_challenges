/*
Write a query that returns the `category` field, but with the first letter capitalized and the rest of the letters in lower-case.
*/

SELECT category,
        UPPER(LEFT(category, 1)) || LOWER(RIGHT(category, LENGTH(category)-1)) AS category_cleaned
FROM tutorial.sf_crime_incidents_2014_01