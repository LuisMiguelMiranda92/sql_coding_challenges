/*
Write a query that creates an accurate timestamp using the date and time columns in tutorial.sf_crime_incidents_2014_01. 
Include a field that is exactly 1 week later as well.
*/
SELECT incidnt_num,
       date,
       time,
       (SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) ||
        '-' || SUBSTR(date, 4, 2) || ' ' || time)::TIMESTAMP AS timestamp,
        (SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) ||
        '-' || SUBSTR(date, 4, 2) || ' ' || time)::TIMESTAMP + INTERVAL '1 week' AS timestamp_plus_week
  FROM tutorial.sf_crime_incidents_2014_01