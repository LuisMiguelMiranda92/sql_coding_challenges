/*
You've been asked by Amazon to find the shipment_id and weight of the third heaviest shipment.
Output the shipment_id, and total_weight for that shipment_id.
In the event of a tie, do not skip ranks.
*/
with ship_by_weight AS (
select shipment_id,
        sum(weight) as total_ship_weight,
        RANK() OVER(
        ORDER BY sum(weight) DESC) as rn
from amazon_shipment
group by 1
)
select shipment_id,
        total_ship_weight
from ship_by_weight
where rn = 3