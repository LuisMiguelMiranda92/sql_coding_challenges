/*
Count the number of users who made more than 5 searches in August 2021.
*/

SELECT
    COUNT(*) AS total_users_with_more_than_5_searches
FROM (
    SELECT
        user_id
    FROM
        fb_searches
    GROUP BY
        user_id
    HAVING
        COUNT(1) >= 5
) AS qualifying_users;