/*
What percentage of all products are both low fat and recyclable?
*/

SELECT
    (COUNT(CASE WHEN is_low_fat = 'Y' AND is_recyclable = 'Y' THEN 1 END) * 100.0) / COUNT(*) AS percentage_both_lowfat_recyclable
FROM
    facebook_products
