/*
Calculate the percentage of spam posts in all viewed posts by day. 
A post is considered a spam if a string "spam" is inside keywords of the post. 
Note that the facebook_posts table stores all posts posted by users. 
The facebook_post_views table is an action table denoting if a user has viewed a post.
*/
SELECT 
    p.post_date,
    COUNT(CASE WHEN p.post_keywords ILIKE '%spam%' THEN 1 END) * 100.0 / COUNT(*) AS spam_share
FROM facebook_posts p
JOIN facebook_post_views v ON p.post_id = v.post_id
GROUP BY post_date;

