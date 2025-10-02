/*
Write a query that displays all rows from the three categories with the fewest incidents reported.
*/

SELECT i.*
FROM tutorial.sf_crime_incidents_2014_01 i
JOIN (SELECT category,
        COUNT(*)
      FROM tutorial.sf_crime_incidents_2014_01
      GROUP BY 1
      ORDER BY 2
      LIMIT 3) sub
      ON i.category = sub.category

