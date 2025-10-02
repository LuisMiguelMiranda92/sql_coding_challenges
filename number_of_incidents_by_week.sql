/*
Write a query that counts the number of incidents reported by week. 
Cast the week as a date to get rid of the hours/minutes/seconds.
*/

SELECT DATE_TRUNC('week'   , cleaned_date) AS week,
        COUNT(incidnt_num)
FROM tutorial.sf_crime_incidents_cleandate
GROUP BY 1
ORDER BY 1