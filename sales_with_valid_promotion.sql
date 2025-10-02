/*
The marketing manager wants you to evaluate how well the previously ran advertising campaigns are working.
Particularly, they are interested in the promotion IDs from the online_promotions table.
Calculate the percentage of orders in the online_orderstable that used a promotion from the online_promotions table.
*/

SELECT
    (COUNT(p.promotion_id) * 100.0) / COUNT(*) AS percentage_with_promotion
FROM
    online_orders AS o
LEFT JOIN
    online_promotions AS p
ON
    o.promotion_id = p.promotion_id;