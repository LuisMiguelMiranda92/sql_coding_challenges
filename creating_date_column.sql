/*
Write a query that creates a date column formatted YYYY-MM-DD.
*/

SELECT date,
        RIGHT(LEFT(date, 10), 4) as year,
        LEFT(LEFT(date, 10), 2) as month,
        RIGHT(LEFT(LEFT(date, 10), 8), 2) as day,
        RIGHT(LEFT(date, 10), 4) || '-' || LEFT(LEFT(date, 10), 2) || '-' || RIGHT(LEFT(LEFT(date, 10), 8), 2) as date_cleaned
FROM tutorial.sf_crime_incidents_2014_01

/*
or
    SELECT incidnt_num,
           date,
           SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) || '-' || SUBSTR(date, 4, 2) AS cleaned_date
      FROM tutorial.sf_crime_incidents_2014_01
*/
