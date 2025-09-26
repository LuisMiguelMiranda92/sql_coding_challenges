/*
Write a query that shows exactly how long ago each indicent was reported. 
Assume that the dataset is in Pacific Standard Time (UTC - 8).
*/
SELECT incidnt_num,
        cleaned_date,
        CURRENT_DATE - cleaned_date AS how_long_ago
  FROM tutorial.sf_crime_incidents_cleandate
