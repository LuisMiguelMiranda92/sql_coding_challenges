/*
Count the number of users who made more than 5 searches in August 2021.


*/
SELECT
    COUNT(*) AS total_users_with_more_than_5_searches
FROM (
    -- This inner query first finds all the users who have 5 or more searches
    SELECT
        user_id
    FROM
        fb_searches
    GROUP BY
        user_id
    HAVING
        COUNT(1) >= 5
) AS qualifying_users;