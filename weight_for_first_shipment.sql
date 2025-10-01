/*
Write a query to find the weight for each shipment's earliest shipment date. Output the shipment id along with the weight.


*/
select  a.shipment_id,
        a.weight,
        a.shipment_date
from amazon_shipment a
JOIN (SELECT shipment_id,
                MIN(shipment_date) AS earliest_shipment
        FROM amazon_shipment
        GROUP BY 1) AS b
ON a.shipment_id = b.shipment_id 
AND a.shipment_date = b.earliest_shipment
