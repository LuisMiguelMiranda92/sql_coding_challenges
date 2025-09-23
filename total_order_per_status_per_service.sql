/*
Uber is interested in identifying gaps in their business. Calculate the count of orders for each status of each service. Your output should include the service name, status of the order, and the number of orders.


*/

select service_name,
    status_of_order,
    SUM(number_of_orders) as number_of_orders
from uber_orders
GROUP BY 1, 2
