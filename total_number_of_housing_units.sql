/*
Find the total number of housing units completed for each year. 
Output the year along with the total number of housings. Order the result by year in ascending order.


Note: Number of housing units in thousands.
*/
SELECT
    year,
    SUM(
        COALESCE(midwest, 0) +
        COALESCE(northeast, 0) +
        COALESCE(south, 0) +
        COALESCE(west, 0)
    ) AS total_housing_units
FROM
    housing_units_completed_us
GROUP BY
    year
ORDER BY
    year ASC