/*
Find the total number of downloads for paying and non-paying users by date. 
Include only records where non-paying customers have more downloads than paying customers. 
The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads. 
*/
SELECT 
    t.date,
    t.non_paying_downloads,
    t.paying_downloads
FROM (
    SELECT 
        t3.date,
        SUM(CASE 
            WHEN t2.paying_customer = 'no' THEN t3.downloads 
            ELSE 0 
        END) AS non_paying_downloads,
        SUM(CASE 
            WHEN t2.paying_customer = 'yes' THEN t3.downloads 
            ELSE 0 
        END) AS paying_downloads
    FROM ms_user_dimension t1
    JOIN ms_acc_dimension t2 
        ON t1.acc_id = t2.acc_id
    JOIN ms_download_facts t3 
        ON t3.user_id = t1.user_id
    GROUP BY t3.date
) t
WHERE t.non_paying_downloads > t.paying_downloads
ORDER BY t.date ASC