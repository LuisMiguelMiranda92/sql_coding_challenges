/*
Write a query that displays the average number of monthly incidents for each category. 
Hint: use tutorial.sf_crime_incidents_cleandate to make your life a little easier.
*/

SELECT sub.category,
        AVG(sub.incidents)
FROM (SELECT EXTRACT('month' FROM cleaned_date) AS month,
        category,
        COUNT(1) AS incidents
      FROM tutorial.sf_crime_incidents_cleandate
      GROUP BY 1,2 ) sub
GROUP BY 1

