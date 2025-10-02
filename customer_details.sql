/*Find the details of each customer regardless of whether the customer made an order. 
Output the customers first name, last name, and the city along with the order details.
#Sort records based on the customers first name and the order details in ascending order.
*/

select c.first_name,
        c.last_name,
        c.city,
        o.order_details
from customers AS c
LEFT JOIN orders AS o
ON c.id = o.cust_id
ORDER BY c.first_name, o.order_details