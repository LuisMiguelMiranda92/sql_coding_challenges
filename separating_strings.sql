/*
Write a query that separates the `location` field into separate fields for latitude and longitude. 
You can compare your results against the actual `lat` and `lon` fields in the table.
*/

SELECT location,
        TRIM(leading '(' FROM LEFT(location, POSITION(',' IN location)-1)) AS latitude,
        TRIM(trailing ')' FROM RIGHT(location, LENGTH(location) - POSITION(',' IN location))) AS longitude
FROM tutorial.sf_crime_incidents_2014_01