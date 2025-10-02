/*
Calculate the total weight for each shipment and add it as a new column. 
Your output needs to have all the existing rows and columns in addition to the  new column that shows the total weight for each shipment. 
One shipment can have multiple rows.
*/

SELECT a.shipment_id,
        a.sub_id,
        a.weight,
        a.shipment_date,
        b.total_weight
FROM amazon_shipment a
JOIN (SELECT shipment_id,
                SUM(weight) AS total_weight
        FROM amazon_shipment
        GROUP BY 1) AS b
ON a.shipment_id = b.shipment_id 
ORDER BY 1, 2


/*
SELECT
    shipment_id,
    sub_id,
    weight,
    shipment_date,
    SUM(weight) OVER (PARTITION BY shipment_id) AS total_weight
FROM
    amazon_shipment;
*/